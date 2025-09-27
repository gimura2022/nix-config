{
	programs.waybar = {
		enable = true;
		settings = {
			mainBar = {
				layer = "top";
				position = "top";
				margin = "9 13 -10 18";

				modules-left = [
					"hyprland/workspaces"
					"hyprland/submap"
				];

				modules-center = ["clock"];

				modules-right = [
					"pulseaudio"
					"custom/mem"
					"cpu"
					"temperature"
					"battery"
					"tray"
				];

				"hyprland/workspaces" = {
					disable-scroll = true;
				};

				"hyprland/language" = {
					format-en = "us";
					format-ru = "ru";
					min-length = 5;
					tooltip = false;
				};

				"clock" = {
					format = "{:%d %b %I:%M %p}";
				};

				"pulseaudio" = {
					reverse-scrolling = 1;
					format = "{volume}% snd";
					format-muted = "snd muted";
					min-length = 13;
				};

				"custom/mem" = {
					format = "{} mem";
					interval = 3;
					exec = "free -h | awk '/Mem:/{printf $3}'";
					tooltip = false;
				};

				"cpu" = {
					interval = 2;
					format = "{usage}% cpu";
					min-length = 7;
				};

				"temperature" = {
					critical-threshold = 80;
					thermal-zone = 3;
					format = "{temperatureC}°C tmp";
					tooltip = false;
				};

				battery = {
					states = {
						warning = 30;
						critical = 15;
					};
					format = "{capacity}% bat";
					format-plugged = "{capacity}% bat plug";
				};

				tray = {
					icon-size = 16;
					spacing = 0;
				};
			};
		};
	
		style = ''
* {
	border: none;
	border-radius: 0;
	font-family: FiraCode;
	font-weight: bold;
	min-height: 20px;
}

window#waybar {
	background: rgba(98, 104, 128, 0.3);
	border-radius: 8px;
}

window#waybar.hidden {
	opacity: 0.2;
}

#workspaces button, #clock, #pulseaudio, #custom-mem, #cpu, #temperature, #battery, #tray {
	background: transparent;
	color: #e6e0ca;
	transition: all 0.1s ease-out;
	border-radius: 4px;
	margin-top: 3px;
	margin-bottom: 3px;
}

#workspaces {
	margin-left: 8px;
	margin-right: 8px;
	background: transparent;
}

#workspaces button {
	padding: 5px;
	margin-right: 2px;
}

#workspaces button:hover {
	background: #81c8be;
}

#workspaces button.active {
	background: #e78284;
	font-style: italic;
}

#clock {
	padding-left: 16px;
	padding-right: 16px;
}

#pulseaudio {
	margin-right: 8px;
	padding-left: 16px;
	padding-right: 16px;
}

#pulseaudio.muted {
	font-style: italic;
}

#custom-mem {
	margin-right: 8px;
	padding-left: 16px;
	padding-right: 16px;
}

#cpu {
	margin-right: 8px;
	padding-left: 16px;
	padding-right: 16px;
}

#temperature {
	margin-right: 8px;
	padding-left: 16px;
	padding-right: 16px;
}

#temperature.critical {
	font-style: italic;
}

#battery {
	margin-right: 8px;
	padding-left: 16px;
	padding-right: 16px;
}

#battery.charging {
	font-style: italic;
}

#battery.warning:not(.charging) {
	background: #9a542e;
}

#battery.critical:not(.charging) {
	animation-name: blink;
	animation-duration: 0.5s;
	animation-timing-function: linear;
	animation-iteration-count: infinite;
	animation-direction: alternate;
}

#tray {
	padding-left: 16px;
	padding-right: 16px;
	margin-right: 8px;
}

@keyframes blink {
	to {
		background: #e78284;
	}
}
'';
	};
}
