import QtQuick
import Quickshell
import QtQuick.Layouts
import ".."
import "../services"
import "../utils"

PopupWindow {
    id: root
    anchor.item: cava
    anchor.rect.x: bar.width + 4
    anchor.rect.y: (cava.height - root.height) / 2
    implicitWidth: column.width + 24
    implicitHeight: column.height + 24
    visible: false
    color: "transparent"

    Rectangle {
        id: content

        anchors.fill: parent
        opacity: 0
        color: "transparent"

        ColumnLayout {
            id: column
            x: 12
            y: 12

            spacing: 10

            Text {
                font.pixelSize: 20
                font.family: graceFont.name
                color: ThemeManager.colors.primary()
                text: "Tocando agora:"
            }

            RowLayout {
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
                            closeTimer.restart();
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
            source: ThemeManager.paths.images("paper.png")
            z: -1
        }
    }

    // MouseArea {
    //     anchors.fill: parent
    //     hoverEnabled: true
    //     onExited: closeAnimation.start()
    // }

    OpacityAnimator {
        id: openAnimation
        target: content
        from: 0
        to: 1
        duration: 250
        easing.type: Easing.OutCubic
    }

    OpacityAnimator {
        id: closeAnimation
        target: content
        from: 1
        to: 0
        duration: 250
        easing.type: Easing.InOutQuad
        onFinished: root.visible = false
    }

    Timer {
        id: closeTimer
        interval: 3500
        running: false
        onTriggered: {
            closeAnimation.start();
        }
    }

    function formatTime(seconds) {
        const totalSeconds = Math.floor(seconds);
        const minutes = Math.floor(totalSeconds / 60);
        const remainingSeconds = totalSeconds % 60;
        const formattedTime = `${minutes.toString().padStart(2, '0')}:${remainingSeconds.toString().padStart(2, '0')}`;
        return formattedTime;
    }

    function toggleOpen() {
        if (!root.visible) {
            root.visible = true;
            closeTimer.start();
            openAnimation.start();
        } else {
            closeTimer.stop();
            closeAnimation.start();
        }
    }
}
