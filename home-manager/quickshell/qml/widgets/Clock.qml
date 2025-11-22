import QtQuick
import Quickshell
import QtQuick.Layouts
import ".."
import "../utils"
import "../js/moment.js" as Moment

Item {
    Layout.preferredWidth: 40
    Layout.preferredHeight: clock.height + 12

    SystemClock {
        id: sysClock
        precision: SystemClock.Minutes
    }

    ColumnLayout {
        id: clock

        anchors.centerIn: parent
        width: 28
        spacing: 0

        EText {
            Layout.alignment: Qt.AlignCenter
            text: Moment.hooks(sysClock.date).format('hh')
            // font.family: notoFont.name
            // font.pixelSize: 20
            size: 20
            color: ThemeManager.colors.primary()
        }

        EText {
            Layout.alignment: Qt.AlignCenter
            text: Moment.hooks(sysClock.date).format('mm')
            // font.family: notoFont.name
            // font.pixelSize: 14
            size: 14
            color: ThemeManager.colors.primary()
        }

        EText {
            Layout.topMargin: 12
            Layout.alignment: Qt.AlignCenter
            text: Moment.hooks(sysClock.date).format('DD')
            // font.family: notoFont.name
            // font.pixelSize: 14
            size: 14
            color: ThemeManager.colors.primary()
        }

        EText {
            Layout.alignment: Qt.AlignCenter
            text: Moment.hooks(sysClock.date).format('MMM')
            // font.family: notoFont.name
            // font.pixelSize: 14
            size: 14
            color: ThemeManager.colors.primary()
        }
    }

    GradientMouseArea {
        onClicked: {
            calendar.toggleOpen();
        }
    }

    Calendar {
        id: calendar
    }
}
