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
					tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
					format = "{:%a; %d %b, %I:%M %p}";
				};

				"pulseaudio" = {
					reverse-scrolling = 1;
					format = "{volume}% {icon} {format_source}";
					format-bluetooth = "{volume}% {icon} {format_source}";
					format-bluetooth-muted = " {icon} {format_source}";
					format-muted = " {format_source}";
					format-source = "{volume}% ";
					format-source-muted = "";
					format-icons = {
						headphone = "";
						hands-free = "";
						headset = "";
						phone = "";
						portable = "";
						car = "";
						default = ["" "" ""];
					};
					min-length = 13;
				};

				"custom/mem" = {
					format = "{} ";
					interval = 3;
					exec = "free -h | awk '/Mem:/{printf $3}'";
					tooltip = false;
				};

				"cpu" = {
					interval = 2;
					format = "{usage}% ";
					min-length = 6;
				};

				"temperature" = {
					critical-threshold = 80;
					thermal-zone = 2;
					format = "{temperatureC}°C {icon}";
					format-icons = ["" "" "" "" ""];
					tooltip = false;
				};

				battery = {
					states = {
						warning = 30;
						critical = 15;
					};
					format = "{capacity}% {icon}";
					format-charging = "{capacity}% ";
					format-plugged = "{capacity}% ";
					format-alt = "{time} {icon}";
					format-icons = ["" "" "" "" "" "" "" "" "" ""];
				};

				tray = {
					icon-size = 16;
					spacing = 0;
				};

			};
		};
	
		style = 
			''
* {
		border: none;
		border-radius: 0;
		/* `otf-font-awesome` is required to be installed for icons */
		font-family: CaskaydiaCove Mono;
		font-weight: bold; 
		min-height: 20px;
}

window#waybar {
		background: transparent;
}

window#waybar.hidden {
		opacity: 0.2;
}

#workspaces {
		margin-right: 8px;
		border-radius: 1px;
		transition: none;
		background: #383c4a;
}

#workspaces button {
		transition: none;
		color: #4293c2;
		background: transparent;
		padding: 5px;
		font-size: 16px;
}

#workspaces button.persistent {
		color: #7c818c;
		font-size: 12px;
}

/* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
#workspaces button:hover {
		transition: none;
		box-shadow: inherit;
		text-shadow: inherit;
		border-radius: 1px;
		color: #383c4a;
		background: #7c818c;
}

#workspaces button.active {
		background: #4e5263;
		color: white;
		border-radius: 1px;
}

#language {
		padding-left: 16px;
		padding-right: 8px;
		transition: none;
		color: #ffffff;
		background: #538dd4;
}

#keyboard-state {
		margin-right: 8px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #383c4a;
}

#custom-pacman {
		padding-left: 16px;
		padding-right: 8px;
		transition: none;
		color: #ffffff;
		background: #383c4a;
}

#custom-mail {
		margin-right: 8px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #383c4a;
}

#submap {
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #383c4a;
}

#clock {
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #383c4a;
}

#custom-weather {
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #383c4a;
}

#pulseaudio {
		margin-right: 8px;
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #53d4a2;
}

#pulseaudio.muted {
		background-color: #90b1b1;
		color: #e34958;
}

#custom-mem {
		margin-right: 8px;
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #b652de;
}

#cpu {
		margin-right: 8px;
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #c7de52;
}

#temperature {
		margin-right: 8px;
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #5265de;
}

#temperature.critical {
		background-color: #e34055;
}

#backlight {
		margin-right: 8px;
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #383c4a;
}

#battery {
		margin-right: 8px;
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #50e340;
}

#battery.charging {
		color: #ffffff;
		background-color: #40e394;
}

#battery.warning:not(.charging) {
		background-color: #ffbe61;
		color: black;
}

#battery.critical:not(.charging) {
		background-color: #f53c3c;
		color: #ffffff;
		animation-name: blink;
		animation-duration: 0.5s;
		animation-timing-function: linear;
		animation-iteration-count: infinite;
		animation-direction: alternate;
}

#tray {
		padding-left: 16px;
		padding-right: 16px;
		transition: none;
		color: #ffffff;
		background: #383c4a;
}

@keyframes blink {
		to {
				background-color: #ffffff;
				color: #000000;
		}
}
			'';
	};
}
