import Quickshell
import QtQuick
import ".."
import "../services"

PopupWindow {
    id: root
    anchor.item: volume
    anchor.rect.x: bar.width + 4
    anchor.rect.y: volume.height / 2 - 20
    implicitWidth: 48
    implicitHeight: 40
    visible: false
    color: "transparent"

    Rectangle {
        id: content

        anchors.fill: parent
        opacity: 0
        color: "transparent"

        Row {
            anchors.centerIn: parent
            Text {
                text: Math.round(100 * AudioService.volume)
                font.family: graceFont.name
                font.pixelSize: 24
                color: ThemeManager.colors.primary()
            }

            Text {
                text: "%"
                anchors.verticalCenter: parent.verticalCenter
                font.family: graceFont.name
                font.pixelSize: 12
                color: ThemeManager.colors.primary()
            }
        }

        Image {
            anchors.fill: parent
            source: ThemeManager.paths.images("paper-bg.png")
            z: -1
        }
    }

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

    function open() {
        root.visible = true;
        openAnimation.start();
    }

    function close() {
        closeAnimation.start();
    }

    function toggleOpen() {
        if (!root.visible) {
            root.visible = true;
            openAnimation.start();
        } else {
            closeAnimation.start();
        }
    }
}
