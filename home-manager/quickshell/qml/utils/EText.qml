import QtQuick
import ".."

Text {
    property int size

    font.family: ThemeManager.font.family
    font.pixelSize: Math.max(size * ThemeManager.font.sizeMultiplier, 1)
}
