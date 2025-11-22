import QtQuick
import QtQuick.Layouts
import ".."
import "../utils"
import "../services"

ListView {
    spacing: 0
    width: 40
    height: HyprlandService.workspaces.count * 40
    Layout.fillHeight: true
    Layout.topMargin: 12
    clip: true

    model: HyprlandService.workspaces

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
                HyprlandService.switchToWorkspace(model);
                // miguel.positionViewAtIndex(11, ListView.Contain);
            }
        }
    }
}
