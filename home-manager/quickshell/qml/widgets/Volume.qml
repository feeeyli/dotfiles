import QtQuick
import QtQuick.Layouts
import QtQuick.Shapes
import ".."
import "../services"
import "../utils"

ColumnLayout {
    Layout.preferredWidth: 40

    Rectangle {
        id: volumeBar
        Layout.topMargin: 12
        Layout.alignment: Qt.AlignHCenter
        property double percent: AudioService.volume
        Layout.preferredWidth: 20
        Layout.preferredHeight: 64
        color: "transparent"

        Shape {
            width: 20
            height: 64
            clip: true
            anchors {
                bottom: parent.bottom
            }

            ShapePath {
                fillColor: ThemeManager.colors.primary(0.25)
                strokeWidth: 0
                startX: 0
                startY: 0
                PathLine {
                    x: 20
                    relativeY: 0
                }
                PathLine {
                    x: 0
                    y: 64
                }
            }
        }

        Shape {
            width: 20
            height: 64 * volumeBar.percent
            clip: true
            anchors {
                bottom: parent.bottom
            }

            ShapePath {
                fillColor: ThemeManager.colors.primary()
                strokeWidth: 0
                startX: 0
                startY: -64 + 64 * volumeBar.percent
                PathLine {
                    x: 20
                    relativeY: 0
                }
                PathLine {
                    x: 0
                    y: 64 * volumeBar.percent
                }
            }
        }
    }

    Icon {
        id: volumeIcon
        Layout.bottomMargin: 12
        Layout.alignment: Qt.AlignHCenter
        size: 20
        name: {
            const volume = Math.round(AudioService.volume * 100);

            if (volume === 0) {
                return "mute";
            } else if (volume >= 1 && volume <= 33) {
                return "volume-low";
            } else if (volume >= 34 && volume <= 66) {
                return "volume-mid";
            }

            return "volume-high";
        }
    }
}
