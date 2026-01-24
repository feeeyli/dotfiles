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
        top: true
        right: true
    }

    margins {
        left: 4
        top: 4
        right: 4
    }

    implicitHeight: 40

    color: "transparent"

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 12
        anchors.rightMargin: 12

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
                    // ThemeManager.cycleThemes();
                    Quickshell.execDetached(["fuzzel", "-a", "top-left"]);
                }
            }
        }

        Workspaces {}

        Rectangle {
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
            anchors.centerIn: parent
            color: "transparent"

            Icon {
                anchors.centerIn: parent
                name: "sangue"
                size: 24
            }

            GradientMouseArea {
                onClicked: {
                    Quickshell.execDetached(["sh", "-c", "~/dotfiles/home-manager/fuzzel/scripts/menu.sh"]);
                }
            }
        }

        RowLayout {
            spacing: 0

            Layout.preferredHeight: 40
            Layout.alignment: Qt.AlignRight

            Clock {}

            Cava {}

            Volume {
                id: volume

                GradientMouseArea {
                    onClicked: {
                        Quickshell.execDetached(["kitty", "-e", "alsamixer", "-c", "1"]);
                    }
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
