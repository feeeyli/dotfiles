import QtQuick
import Quickshell
import QtQuick.Layouts
import "../js/moment.js" as Moment
import ".."

PopupWindow {
    id: root
    anchor.item: clock
    // anchor.rect.x: bar.width + 4
    anchor.rect.y: 0
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
            anchors.centerIn: parent

            RowLayout {
                Layout.alignment: Qt.AlignCenter
                spacing: 16

                Text {
                    font.pixelSize: 28
                    font.family: graceFont.name
                    color: ThemeManager.colors.primary()
                    text: Moment.hooks(sysClock.date).format('hh:mm')
                }

                Text {
                    font.pixelSize: 18
                    font.family: graceFont.name
                    color: ThemeManager.colors.primary(0.75)
                    text: Moment.hooks(sysClock.date).format('ddd, DD')
                }
            }

            Text {
                Layout.alignment: Qt.AlignCenter
                font.family: notoFont.name
                font.pixelSize: 14
                text: Moment.hooks(sysClock.date).format('MMMM YYYY')
                color: ThemeManager.colors.muted(0.75)
            }

            Grid {
                Layout.preferredWidth: 168
                columns: 7

                Repeater {
                    model: 37

                    Rectangle {
                        width: 24
                        height: 24

                        property var now: new Date()
                        property int currentDay: now.getDate()
                        property int currentMonth: now.getMonth()
                        property int currentYear: now.getFullYear()

                        // Calculate what day this cell represents
                        property var firstDay: new Date(currentYear, currentMonth, 1)
                        property int startOffset: firstDay.getDay()  // 0 = Sunday
                        property int dayNumber: index - startOffset + 1
                        property var lastDay: new Date(currentYear, currentMonth + 1, 0)
                        property int daysInMonth: lastDay.getDate()
                        property bool isCurrentDay: dayNumber === currentDay
                        property bool isValidDay: dayNumber >= 1 && dayNumber <= daysInMonth

                        color: "transparent"

                        Text {
                            anchors.centerIn: parent
                            text: parent.isValidDay ? parent.dayNumber : ""
                            font.family: notoFont.name
                            font.pixelSize: 13
                            color: {
                                if (parent.isValidDay && parent.isCurrentDay)
                                    return ThemeManager.colors.primary();
                                return ThemeManager.colors.muted(0.75);
                            }
                            font.weight: parent.isValidDay && parent.isCurrentDay ? Font.DemiBold : Font.Normal
                        }
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

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: closeTimer.stop()
        onExited: closeTimer.restart()
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

    Timer {
        id: closeTimer
        interval: 2500
        running: false
        onTriggered: {
            closeAnimation.start();
        }
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
