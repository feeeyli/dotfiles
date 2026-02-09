pragma Singleton
import QtQuick
import Quickshell

Singleton {
    id: root

    // property string theme: ["edm", "sinais", "hexatombe"][Math.floor(Math.random() * 3)]
    property string theme: "hexatombe"
    readonly property var colors: themes[theme].colors
    readonly property var paths: {
        "images": path => "/home/feyli/.config/quickshell/assets/" + theme + "/" + path
    }
    readonly property var font: themes[theme].font
    readonly property var themes: {
        "caverna": {
            colors: {
                "background": color("#000000"),
                "primary": color("#83DE0F"),
                "muted": color("#D8D6C8")
            }
        },
        "edm": {
            colors: {
                "background": color("#02000F"),
                "primary": color("#644DE6"),
                "muted": color("#D8D6C8")
            },
            font: {
                family: "Noto Serif",
                sizeMultiplier: 1
            }
        },
        "hexatombe": {
            colors: {
                "background": color("#100000"),
                "primary": color("#D20D1B"),
                "muted": color("#D8D6C8")
            },
            font: {
                family: "Slayer movie",
                sizeMultiplier: 0.6
            }
        },
        "sinais": {
            colors: {
                "background": color("#000000"),
                "primary": color("#83DE0F"),
                "muted": color("#D8D6C8")
            },
            font: {
                family: "Go around the books 2022",
                sizeMultiplier: 0.85
            }
        }
    }

    function color(hex) {
        return opacity => {
            if (!opacity)
                return hex;

            return `#${Math.round(opacity * 255).toString(16).padStart(2, '0')}${hex.replace("#", "")}`;
        };
    }

    function cycleThemes() {
        const themes = ["edm", "sinais", "hexatombe"];
        const index = themes.findIndex(t => t === theme);

        if (index + 1 >= themes.length) {
            theme = themes[0];
        } else {
            theme = themes[index + 1];
        }
    }
}
