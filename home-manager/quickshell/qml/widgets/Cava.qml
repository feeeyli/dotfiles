import Quickshell
import QtQuick
import Quickshell.Io
import ".."
import "../utils"

Item {
    id: cava

    property var visualizerBars: []

    implicitWidth: bars.width + 24
    implicitHeight: 40

    Component.onCompleted: {
        let bars = [];
        for (let i = 0; i < 25; i++) {
            bars.push(0.05);
        }
        cava.visualizerBars = bars;
    }

    Process {
        id: cavaReader
        command: ["sh", "-c", "cava -p ~/.config/cava/config_widget 2>/dev/null | while IFS= read -r line; do echo \"$line\"; done"]
        running: true
        property int lineCount: 0

        stdout: SplitParser {
            splitMarker: "\n"
            onRead: data => {
                cavaReader.lineCount++;

                const values = data.trim().split(';');
                if (values.length > 0) {
                    let bars = [];
                    for (let i = 0; i < 25; i++) {
                        if (i < values.length && values[i] !== '') {
                            const val = parseInt(values[i]);
                            if (!isNaN(val)) {
                                const normalized = Math.min(Math.max(val / 100, 0.05), 1.0);
                                bars.push(normalized);
                            } else {
                                bars.push(0.05);
                            }
                        } else {
                            bars.push(0.05);
                        }
                    }
                    cava.visualizerBars = bars;
                }
            }
        }

        stderr: SplitParser {
            onRead: data => {
                console.log("Audio/Cava stderr:", data);
            }
        }

        onRunningChanged: {
            if (!running) {
                console.log("Audio: Cava stopped (processed " + lineCount + " lines), restarting in 3s...");
                lineCount = 0;
                restartCavaTimer.start();
            }
        }
    }

    Timer {
        id: restartCavaTimer
        interval: 3000
        running: false
        repeat: false
        onTriggered: {
            console.log("Audio: Restarting cava...");
            cavaReader.running = true;
        }
    }

    Row {
        id: bars
        anchors {
            centerIn: parent
            // left: parent.left
            // right: parent.right
            // leftMargin: 10
            // rightMargin: 10
        }
        height: 20
        spacing: 3

        Repeater {
            model: cava.visualizerBars

            Rectangle {
                height: 20 * modelData
                width: 4
                // width: (parent.width - (49 * parent.spacing)) / 50
                // height: parent.height * modelData
                anchors.bottom: parent.bottom

                color: ThemeManager.colors.primary()
                // opacity: cava.isPlaying ? 1 : 0.15

                Behavior on height {
                    NumberAnimation {
                        duration: 50
                        easing.type: Easing.OutCubic
                    }
                }

                // Behavior on opacity {
                //     NumberAnimation {
                //         duration: 400
                //     }
                // }
            }
        }
    }

    GradientMouseArea {
        onClicked: {
            musicPlayerPanel.toggleOpen(cava.mapToGlobal(cava.width, 0).x);
        }
    }

    // MusicPlayer {
    //     id: musicPlayer
    // }
}
