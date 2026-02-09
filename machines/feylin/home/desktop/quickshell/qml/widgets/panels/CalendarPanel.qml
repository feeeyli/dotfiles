import Quickshell
import QtQuick
import QtQuick.Layouts
import "../../modules"
import "../.."
import "../../js/moment.js" as Moment

FloatingPanel {
    // id: root
    panelName: "music-player"

    SystemClock {
        id: sysClock
        precision: SystemClock.Minutes
    }

    content: Item {
        id: content
        width: column.width + 24
        height: column.height + 24
        x: -width / 2

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

    function formatTime(seconds) {
        const totalSeconds = Math.floor(seconds);
        const minutes = Math.floor(totalSeconds / 60);
        const remainingSeconds = totalSeconds % 60;
        const formattedTime = `${minutes.toString().padStart(2, '0')}:${remainingSeconds.toString().padStart(2, '0')}`;
        return formattedTime;
    }

    // function toggleOpen() {
    //     if (!root.visible) {
    //         root.visible = true;
    //         closeTimer.start();
    //         openAnimation.start();
    //     } else {
    //         closeTimer.stop();
    //         closeAnimation.start();
    //     }
    // }
}
