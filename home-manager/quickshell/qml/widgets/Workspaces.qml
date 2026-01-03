import QtQuick
import QtQuick.Layouts
import ".."
import "../utils"
import "../services"

ListView {
    orientation: Qt.Horizontal
    spacing: 0
    height: 40
    width: Math.min(NiriService.workspaces.count * 40, 40 * 15)
    Layout.fillWidth: true
    // Layout.maximumWidth: 250
    Layout.leftMargin: 12
    clip: true

    model: NiriService.workspaces

    delegate: Rectangle {
        implicitHeight: 40
        implicitWidth: 40
        color: "transparent"

        Icon {
            anchors.centerIn: parent
            name: `workspace-${model.id - 1}`
            size: 28
            opacity: model.isActive ? 1 : 0.35
        }

        GradientMouseArea {
            onClicked: {
                NiriService.switchToWorkspace(model);
                // miguel.positionViewAtIndex(11, ListView.Contain);
            }
        }
    }
}
