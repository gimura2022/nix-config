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

				Rectangle {
					anchors.fill: parent
					color: "#181825"
				}

				Text {
					anchors.centerIn: parent
					font.family: "CaskaydiaCove Nerd Font"
					font.pixelSize: 38
					renderTypeQuality: Text.VeryHighRenderTypeQuality
					color: "#cdd6f4"
					text: root.time

					FontLoader {
						id: localFont
						source: "font.ttf"
					}

				}
			}
		}
	}

	Process {
		id: dateProc

		command: ["date", "+%T"]
		running: true

		stdout: StdioCollector {
			onStreamFinished: root.time = "main(){puts(\"It's " + this.text.slice(0, -1) + " now!\");}"
		}
	}

	Timer {
		interval: 1000
		running: true
		repeat: true
		onTriggered: dateProc.running = true
	}
}
