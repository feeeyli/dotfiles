import Quickshell
import Quickshell.Wayland
import QtQuick
import ".."

PanelWindow {
    color: "black"
    WlrLayershell.layer: WlrLayer.Background
    WlrLayershell.exclusionMode: ExclusionMode.Ignore
    WlrLayershell.namespace: "noctalia-wallpaper-" + (screen?.name || "unknown")

    anchors {
        bottom: true
        top: true
        right: true
        left: true
    }

    Image {
        id: currentWallpaper

        property bool dimensionsCalculated: false

        source: ThemeManager.paths.images("wallpaper")
        smooth: true
        mipmap: false
        cache: false
        asynchronous: true
        sourceSize: undefined
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        // onStatusChanged: {
        //     if (status === Image.Error) {
        //     Logger.w("Current wallpaper failed to load:", source)
        //     } else if (status === Image.Ready && !dimensionsCalculated) {
        //     dimensionsCalculated = true
        //     const optimalSize = calculateOptimalWallpaperSize(implicitWidth, implicitHeight)
        //     if (optimalSize !== false) {
        //         sourceSize = optimalSize
        //     }
        //     }
        // }
        // onSourceChanged: {
        //     dimensionsCalculated = false
        //     sourceSize = undefined
        // }
    }
}
