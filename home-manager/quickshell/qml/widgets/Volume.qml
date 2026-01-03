import QtQuick
import QtQuick.Layouts
import QtQuick.Shapes
import ".."
import "../services"
import "../utils"

RowLayout {
    Layout.preferredHeight: 40
    spacing: 0

    Rectangle {
        id: volumeBar
        Layout.leftMargin: 12
        Layout.rightMargin: 12
        Layout.alignment: Qt.AlignVCenter
        property double percent: AudioService.volume
        Layout.preferredHeight: 20
        Layout.preferredWidth: 64
        color: "transparent"

        Shape {
            height: 20
            width: 64
            clip: true
            anchors {
                bottom: parent.bottom
            }

            ShapePath {
                fillColor: ThemeManager.colors.primary(0.25)
                strokeWidth: 0
                startX: 0
                startY: 20
                PathLine {
                    x: 64
                    y: 0
                }
                PathLine {
                    x: 64
                    y: 20
                }
            }
        }

        Shape {
            height: 20
            width: 64 * volumeBar.percent
            clip: true
            anchors {
                bottom: parent.bottom
            }

            ShapePath {
                fillColor: ThemeManager.colors.primary()
                strokeWidth: 0
                startX: 0
                startY: 20
                PathLine {
                    x: 64
                    y: 0
                }
                PathLine {
                    x: 64 * volumeBar.percent
                    y: 20
                }
            }
        }
    }

    Icon {
        id: volumeIcon
        Layout.rightMargin: 12
        Layout.alignment: Qt.AlignVCenter
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
