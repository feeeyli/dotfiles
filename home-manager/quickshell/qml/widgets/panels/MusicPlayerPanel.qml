import QtQuick
import QtQuick.Layouts
import Quickshell
import "../../modules"
import "../../utils"
import "../../services"
import "../.."

FloatingPanel {
    // id: root
    panelName: "music-player"

    content: Item {
        id: content
        height: column.height + 24
        width: column.width + 24
        x: -width

        opacity: 1
        // color: "red"

        ColumnLayout {
            id: column
            anchors.centerIn: parent

            spacing: 10

            Text {
                font.pixelSize: 20
                font.family: graceFont.name
                color: ThemeManager.colors.primary()
                text: MediaService.currentPlayer !== null ? "Tocando agora:" : "Nada tocando agora :["
            }

            RowLayout {
                visible: MediaService.currentPlayer !== null

                Image {
                    source: MediaService.trackArtUrl
                    Layout.preferredHeight: 40
                    Layout.preferredWidth: 40
                }

                Rectangle {
                    Layout.preferredHeight: 28
                    Layout.preferredWidth: 28

                    radius: 2
                    color: "transparent"

                    Icon {
                        anchors.centerIn: parent
                        name: MediaService.isPlaying ? "pause" : "play"
                    }

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        hoverEnabled: true
                        onEntered: parent.color = ThemeManager.colors.primary(0.1)
                        onExited: parent.color = "transparent"
                        onClicked: {
                            MediaService.playPause();
                        }
                    }
                }

                Text {
                    text: `${MediaService.trackTitle} - ${MediaService.trackArtist}`
                    font.family: notoFont.name
                    font.pixelSize: 14
                    color: ThemeManager.colors.muted()
                }

                RowLayout {
                    Text {
                        text: formatTime(MediaService.currentPosition)
                        font.pixelSize: 12
                        font.family: notoFont.name
                        color: ThemeManager.colors.primary()
                    }

                    Text {
                        text: "/"
                        font.family: notoFont.name
                        font.pixelSize: 12
                        color: ThemeManager.colors.muted(0.5)
                    }

                    Text {
                        text: formatTime(MediaService.trackLength)
                        font.pixelSize: 12
                        font.family: notoFont.name
                        color: ThemeManager.colors.muted(0.5)
                    }
                }
            }
        }

        Image {
            anchors.fill: parent
            source: ThemeManager.paths.images("paper-bg")
            z: -1
        }
    }

    function formatTime(seconds) {
        const totalSeconds = Math.floor(seconds);
        const minutes = Math.floor(totalSeconds / 60);
        const remainingSeconds = totalSeconds % 60;
        const formattedTime = `${minutes.toString().padStart(2, '0')}:${remainingSeconds.toString().padStart(2, '0')}`;
        return formattedTime;
    }

    // function toggleOpen() {
    //     if (!root.visible) {
    //         root.visible = true;
    //         closeTimer.start();
    //         openAnimation.start();
    //     } else {
    //         closeTimer.stop();
    //         closeAnimation.start();
    //     }
    // }
}
