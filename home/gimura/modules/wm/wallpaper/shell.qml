import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import QtQuick

Scope {
	id: root

	property string time

	Variants {
		model: Quickshell.screens

		delegate: Component {
			PanelWindow {
				required property var modelData
				screen: modelData

				id: window
				aboveWindows: false
				exclusionMode: ExclusionMode.Ignore

				anchors {
					top: true
					bottom: true
					left: true
					right: true
				}

				Image {
					anchors.fill: parent
					source: "home/gimura/modules/wm/wallpaper/background.png"
				}

				Text {
					anchors.centerIn: parent
					font.family: "Tulpen One"
					font.pixelSize: 1000
					renderTypeQuality: Text.VeryHighRenderTypeQuality
					color: "#ffffffff"
					text: root.time

					FontLoader {
						id: localFont
						source: "home/gimura/modules/wm/wallpaper/font.ttf"
					}

				}

				Image {
					anchors.fill: parent
					source: "home/gimura/modules/wm/wallpaper/foreground.png"
				}
			}
		}
	}

	Process {
		id: dateProc

		command: ["date", "+%R"]
		running: true

		stdout: StdioCollector {
			onStreamFinished: root.time = this.text
		}
	}

	Timer {
		interval: 1000
		running: true
		repeat: true
		onTriggered: dateProc.running = true
	}
}
