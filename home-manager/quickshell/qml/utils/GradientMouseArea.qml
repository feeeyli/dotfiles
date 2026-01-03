import QtQuick
import ".."

MouseArea {
    anchors.fill: parent
    cursorShape: Qt.PointingHandCursor

    hoverEnabled: true
    onEntered: background.opacity = 1
    onExited: background.opacity = 0

    Rectangle {
        id: background
        anchors.fill: parent
        opacity: 0

        gradient: Gradient {
            // orientation: Gradient.Horizontal

            GradientStop {
                position: 0.0
                color: ThemeManager.colors.primary(0.2)
            }
            GradientStop {
                position: 1.0
                color: "transparent"
            }
        }

        Behavior on opacity {
            NumberAnimation {
                duration: 150
            }
        }
    }
}
