import Quickshell
import QtQuick
import "./widgets"
import "./services"

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

    Wallpaper {}
}
