import QtQuick
import Quickshell
import QtQuick.Layouts
import ".."
import "../utils"
import "../js/moment.js" as Moment

Item {
    Layout.preferredHeight: 40
    Layout.preferredWidth: clock.width + 12

    SystemClock {
        id: sysClock
        precision: SystemClock.Minutes
    }

    RowLayout {
        id: clock

        anchors.centerIn: parent
        height: 28
        spacing: 12

        EText {
            Layout.alignment: Qt.AlignCenter
            text: Moment.hooks(sysClock.date).format('hh:mm')
            size: 20
            color: ThemeManager.colors.primary()
        }

        EText {
            Layout.alignment: Qt.AlignVCenter
            text: Moment.hooks(sysClock.date).format('DD MMM')
            size: 14
            color: ThemeManager.colors.primary()
        }
    }

    GradientMouseArea {
        onClicked: {
            calendarPanel.toggleOpen(clock.mapToGlobal(clock.width / 2, 0).x);
        }
    }
}
