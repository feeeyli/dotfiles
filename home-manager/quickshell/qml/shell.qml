import Quickshell
import QtQuick
import "./widgets"
import "./widgets/panels"

ShellRoot {
    // FontLoader {
    //     id: sigilosFont
    //     source: "fonts/SigilosDeConhecimento.ttf"
    // }

    FontLoader {
        id: graceFont
        source: "fonts/CoveredByYourGrace-Regular.ttf"
    }

    FontLoader {
        id: notoFont
        source: "fonts/NotoSerif-Variable.ttf"
    }

    FontLoader {
        id: hexatombeFont
        source: "fonts/slayermovie.ttf"
    }

    FontLoader {
        id: sinaisFont
        source: "fonts/goaroundthebooks.ttf"
    }

    FontLoader {
        id: rpFont
        source: "fonts/rp-icons.ttf"
    }

    Bar {}

    // PanelWindow {
    //     anchors {
    //         top: true
    //         left: true
    //         bottom: true
    //     }

    //     implicitWidth: 38

    //     color: "transparent"
    // }

    // PanelWindow {
    //     anchors {
    //         top: true
    //         right: true
    //         bottom: true
    //     }

    //     implicitWidth: 38

    //     color: "transparent"
    // }

    // PanelWindow {
    //     anchors {
    //         left: true
    //         bottom: true
    //         right: true
    //     }

    //     implicitHeight: 24

    //     color: "transparent"
    // }

    // Wallpaper {}

    MusicPlayerPanel {
        id: musicPlayerPanel
    }

    CalendarPanel {
        id: calendarPanel
    }

    Component.onCompleted: {
        // console.log(JSON.stringify(DesktopEntries.applications.values));
    }
}
