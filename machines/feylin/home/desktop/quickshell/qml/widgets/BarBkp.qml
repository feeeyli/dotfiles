import Quickshell
import QtQuick
import QtQuick.Layouts
import ".."
import "../utils"
import "../services"

PanelWindow {
    id: bar

    anchors {
        left: true
        bottom: true
        top: true
    }

    margins {
        left: 4
        bottom: 4
        top: 4
    }

    implicitWidth: 40

    color: "transparent"

    ColumnLayout {
        anchors.fill: parent
        anchors.topMargin: 12
        anchors.bottomMargin: 12

        Rectangle {
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
            color: "transparent"

            Icon {
                anchors.centerIn: parent
                name: "medo"
                size: 40
            }

            GradientMouseArea {
                onClicked: {
                    ThemeManager.cycleThemes();
                }
            }
        }

        Workspaces {}

        ColumnLayout {
            spacing: 0

            Layout.preferredWidth: 40
            Layout.alignment: Qt.AlignBottom

            Clock {}

            Cava {}

            Volume {
                id: volume

                VolumePercent {
                    id: volumePercent
                }

                GradientMouseArea {
                    onClicked: volumePercent.toggleOpen()
                    onWheel: function (wheel) {
                        if (wheel.angleDelta.y > 0) {
                            AudioService.increaseVolume();
                        } else {
                            AudioService.decreaseVolume();
                        }
                    }
                }
            }
        }
    }

    Rectangle {
        anchors.fill: parent
        color: ThemeManager.colors.background(0.75)
        radius: 2
        z: -2
    }

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: ThemeManager.colors.primary(0.05)
            }
            GradientStop {
                position: 0.35
                color: "transparent"
            }
            GradientStop {
                position: 0.65
                color: "transparent"
            }
            GradientStop {
                position: 1
                color: ThemeManager.colors.primary(0.05)
            }
        }
        radius: 2
        z: -1
    }
}
