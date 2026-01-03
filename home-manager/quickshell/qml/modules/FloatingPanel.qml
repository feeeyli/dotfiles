import Quickshell
import Quickshell.Wayland
import QtQuick

PanelWindow {
    id: root

    property bool isPanelOpen: false
    property string panelName

    anchors {
        top: true
        left: true
        bottom: true
        right: true
    }

    visible: isPanelOpen

    WlrLayershell.layer: WlrLayer.Top
    WlrLayershell.namespace: "rp-panel-content-" + panelName
    WlrLayershell.exclusionMode: ExclusionMode.Ignore
    WlrLayershell.keyboardFocus: {
        if (!root.isPanelOpen) {
            return WlrKeyboardFocus.None;
        }

        return WlrKeyboardFocus.OnDemand;
    }

    color: "transparent"

    margins {
        top: 40 + 4
    }

    property Component content: null
    property int positionX
    property int positionY

    function toggleOpen(x, y = 4) {
        root.positionX = x;
        root.positionY = y;
        root.isPanelOpen = !root.isPanelOpen;
    }

    function close() {
        root.isPanelOpen = false;
    // Start close sequence: fade opacity first
    // isClosing = true;
    // sizeAnimationComplete = false;
    // closeFinalized = false;

    // // Stop the open animation timer if it's still running
    // opacityTrigger.stop();
    // openWatchdogActive = false;
    // openWatchdogTimer.stop();

    // // Start close watchdog timer
    // closeWatchdogActive = true;
    // closeWatchdogTimer.restart();

    // // If opacity is already 0, skip directly to size animation
    // if (contentWrapper.opacity === 0.0) {
    //     opacityFadeComplete = true;
    // } else {
    //     opacityFadeComplete = false;
    // }

    // Logger.d("SmartPanelWindow", "Closing panel", placeholder.panelName);
    }

    Item {
        anchors.fill: parent
        focus: true

        Keys.onPressed: event => {
            // Logger.d("SmartPanelWindow", "Key pressed:", event.key, "for panel:", placeholder.panelName);
            if (event.key === Qt.Key_Escape) {
                root.close();
                event.accepted = true;
            }/* else if (panelWrapper) {
            if (event.key === Qt.Key_Up && panelWrapper.onUpPressed) {
                panelWrapper.onUpPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_Down && panelWrapper.onDownPressed) {
                panelWrapper.onDownPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_Left && panelWrapper.onLeftPressed) {
                panelWrapper.onLeftPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_Right && panelWrapper.onRightPressed) {
                panelWrapper.onRightPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_Tab && panelWrapper.onTabPressed) {
                panelWrapper.onTabPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_Backtab && panelWrapper.onBackTabPressed) {
                panelWrapper.onBackTabPressed();
                event.accepted = true;
            } else if ((event.key === Qt.Key_Return || event.key === Qt.Key_Enter) && panelWrapper.onReturnPressed) {
                panelWrapper.onReturnPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_Home && panelWrapper.onHomePressed) {
                panelWrapper.onHomePressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_End && panelWrapper.onEndPressed) {
                panelWrapper.onEndPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_PageUp && panelWrapper.onPageUpPressed) {
                panelWrapper.onPageUpPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_PageDown && panelWrapper.onPageDownPressed) {
                panelWrapper.onPageDownPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_J && (event.modifiers & Qt.ControlModifier) && panelWrapper.onCtrlJPressed) {
                panelWrapper.onCtrlJPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_K && (event.modifiers & Qt.ControlModifier) && panelWrapper.onCtrlKPressed) {
                panelWrapper.onCtrlKPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_N && (event.modifiers & Qt.ControlModifier) && panelWrapper.onCtrlNPressed) {
                panelWrapper.onCtrlNPressed();
                event.accepted = true;
            } else if (event.key === Qt.Key_P && (event.modifiers & Qt.ControlModifier) && panelWrapper.onCtrlPPressed) {
                panelWrapper.onCtrlPPressed();
                event.accepted = true;
                }
            }*/
        }

        // Background MouseArea for click-to-close (behind content)
        MouseArea {
            anchors.fill: parent
            enabled: root.isPanelOpen && !root.isClosing
            acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton
            onClicked: mouse => {
                root.close();
                mouse.accepted = true;
            }
            z: 0
        }

        Item {
            id: contentWrapper
            // // Position at placeholder location, compensating for window margins
            // x: placeholder.panelItem.x - (placeholder.barPosition === "left" ? (placeholder.barMarginH + Style.barHeight) : 0)
            // y: placeholder.panelItem.y - (placeholder.barPosition === "top" ? (placeholder.barMarginV + Style.barHeight) : 0)
            // width: placeholder.panelItem.width
            // height: placeholder.panelItem.height
            x: root.positionX
            y: root.positionY
            width: 400
            height: 400
            z: 1 // Above click-to-close MouseArea

            // Opacity animation
            opacity: 1 /*{
                if (isClosing)
                    return 0.0;
                if (isPanelVisible && sizeAnimationComplete)
                    return 1.0;
                return 0.0;
                }*/

            // Behavior on opacity {
            //     NumberAnimation {
            //         id: opacityAnimation
            //         duration: root.isClosing ? Style.animationFaster : Style.animationFast
            //         easing.type: Easing.OutQuad

            //         onRunningChanged: {
            //             // Safety: Zero-duration animation handling
            //             if (!running && duration === 0) {
            //                 if (root.isClosing && contentWrapper.opacity === 0.0) {
            //                     root.opacityFadeComplete = true;
            //                     var shouldFinalizeNow = placeholder.panelItem && !placeholder.panelItem.shouldAnimateWidth && !placeholder.panelItem.shouldAnimateHeight;
            //                     if (shouldFinalizeNow) {
            //                         Logger.d("SmartPanelWindow", "Zero-duration opacity + no size animation - finalizing", placeholder.panelName);
            //                         Qt.callLater(root.finalizeClose);
            //                     }
            //                 } else if (root.isPanelVisible && contentWrapper.opacity === 1.0) {
            //                     root.openWatchdogActive = false;
            //                     openWatchdogTimer.stop();
            //                 }
            //                 return;
            //             }

            //             // When opacity fade completes during close, trigger size animation
            //             if (!running && root.isClosing && contentWrapper.opacity === 0.0) {
            //                 root.opacityFadeComplete = true;
            //                 var shouldFinalizeNow = placeholder.panelItem && !placeholder.panelItem.shouldAnimateWidth && !placeholder.panelItem.shouldAnimateHeight;
            //                 if (shouldFinalizeNow) {
            //                     Logger.d("SmartPanelWindow", "No animation - finalizing immediately", placeholder.panelName);
            //                     Qt.callLater(root.finalizeClose);
            //                 } else {
            //                     Logger.d("SmartPanelWindow", "Animation will run - waiting for size animation", placeholder.panelName);
            //                 }
            //             } // When opacity fade completes during open, stop watchdog
            //             else if (!running && root.isPanelVisible && contentWrapper.opacity === 1.0) {
            //                 root.openWatchdogActive = false;
            //                 openWatchdogTimer.stop();
            //             }
            //         }
            //     }
            // }

            // Panel content loader
            Loader {
                id: contentLoader
                active: root.isPanelOpen
                // anchors.fill: parent
                sourceComponent: root.content

                // When content finishes loading, trigger positioning and visibility
                onLoaded: {
                    // Capture initial content-driven size if available
                    if (contentLoader.item) {
                        var hasWidthProp = contentLoader.item.hasOwnProperty('contentPreferredWidth');
                        var hasHeightProp = contentLoader.item.hasOwnProperty('contentPreferredHeight');

                        if (hasWidthProp || hasHeightProp) {
                            var initialWidth = hasWidthProp ? contentLoader.item.contentPreferredWidth : 0;
                            var initialHeight = hasHeightProp ? contentLoader.item.contentPreferredHeight : 0;
                            // placeholder.updateContentSize(initialWidth, initialHeight);
                            // Logger.d("SmartPanelWindow", "Initial content size:", initialWidth, "x", initialHeight, placeholder.panelName);
                        }
                    }

                    // Calculate position in placeholder
                    // placeholder.setPosition();

                    // Make panel visible on the next frame
                    Qt.callLater(function () {
                    // root.isPanelVisible = true;
                    // opacityTrigger.start();

                    // Start open watchdog timer
                    // root.openWatchdogActive = true;
                    // openWatchdogTimer.start();

                    // panelOpened();
                    });
                }
            }

            // MouseArea to prevent clicks on panel content from closing it
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton
                onClicked: mouse => {
                    mouse.accepted = true; // Eat the click to prevent propagation to background
                }
                z: -1 // Behind content but above background click-to-close
            }

            // Watch for changes in content-driven sizes
            // Connections {
            //     target: contentLoader.item
            //     ignoreUnknownSignals: true

            //     function onContentPreferredWidthChanged() {
            //         if (root.isPanelOpen && root.isPanelVisible && contentLoader.item) {
            //             placeholder.updateContentSize(contentLoader.item.contentPreferredWidth, placeholder.contentPreferredHeight);
            //         }
            //     }

            //     function onContentPreferredHeightChanged() {
            //         if (root.isPanelOpen && root.isPanelVisible && contentLoader.item) {
            //             placeholder.updateContentSize(placeholder.contentPreferredWidth, contentLoader.item.contentPreferredHeight);
            //         }
            //     }
            // }
        }
    }
}
