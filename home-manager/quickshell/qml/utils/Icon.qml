import QtQuick
import ".."

Text {
    readonly property var icons: {
        "chevron-right": "\u{e93d}",
        "chevron-up-right": "\u{e93e}",
        "notification": "\u{e93f}",
        "notification-pending": "\u{e940}",
        "wifi": "\u{e941}",
        "gear": "\u{e942}",
        "programs": "\u{e943}",
        "pause": "\u{e944}",
        "play": "\u{e945}",
        "logout": "\u{e946}",
        "reboot": "\u{e947}",
        "shutdown": "\u{e948}",
        "mute": "\u{e949}",
        "volume-low": "\u{e94a}",
        "volume-mid": "\u{e94b}",
        "volume-high": "\u{e94c}"
    }

    readonly property var medoIcons: {
        "edm": "\u{e93c}",
        "sinais": "\u{e921}",
        "hexatombe": "\u{e906}"
    }

    readonly property var workspacesIcons: {
        "edm": ["\u{e922}", "\u{e923}", "\u{e924}", "\u{e925}", "\u{e926}", "\u{e927}", "\u{e928}", "\u{e929}", "\u{e92a}", "\u{e92b}", "\u{e92c}", "\u{e92d}", "\u{e92e}", "\u{e92f}", "\u{e930}", "\u{e931}", "\u{e932}", "\u{e933}", "\u{e934}", "\u{e935}", "\u{e936}", "\u{e937}", "\u{e938}", "\u{e939}", "\u{e93a}", "\u{e93b}"],
        "sinais": ["\u{e907}", "\u{e908}", "\u{e909}", "\u{e90a}", "\u{e90b}", "\u{e90c}", "\u{e90d}", "\u{e90e}", "\u{e90f}", "\u{e910}", "\u{e911}", "\u{e912}", "\u{e913}", "\u{e914}", "\u{e915}", "\u{e916}", "\u{e917}", "\u{e918}", "\u{e919}", "\u{e91a}", "\u{e91b}", "\u{e91c}", "\u{e91d}", "\u{e91e}", "\u{e91f}", "\u{e920}"],
        "hexatombe": ["\u{e900}", "\u{e901}", "\u{e902}", "\u{e903}", "\u{e904}", "\u{e905}"]
    }

    property string name
    property int size

    font.family: rpFont.name
    font.pixelSize: size
    color: ThemeManager.colors.primary()
    text: getIcon(name)

    function getIcon(n) {
        if (n.startsWith("workspace"))
            return getWorkspaceIcon(n);

        if (icons[n])
            return icons[n];

        if (n === "medo") {
            return medoIcons[ThemeManager.theme];
        }
    }

    function getWorkspaceIcon(n) {
        const id = Number(n.split("-")[1]);
        const arr = workspacesIcons[ThemeManager.theme];

        return arr[id % arr.length];
    }
}
