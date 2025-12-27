{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        margin = "0 0 0 0";

        modules-left = [
          "hyprland/workspaces"
          "hyprland/submap"
          "network"
          "bluetooth"
        ];

        modules-center = [ "clock" ];

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
          format = "{:%d %b %H:%M}";
        };

        "pulseaudio" = {
          reverse-scrolling = 1;
          format = "{volume}% sound";
          format-muted = "muted";
          min-length = 13;
        };

        "network" = {
          min-length = 40;
          format-disconnected = "no inet";
          format-wifi = "inet out: {bandwidthUpBytes}, in: {bandwidthDownBytes}";
          tooltip = false;
          interval = 5;
        };

        "bluetooth" = {
          on-click = "blueman-manager";
          format = "bth {status}";
          format-connected = "bth {status} bat {device_battery_percentage}%";
          interval = 5;
        };

        "custom/mem" = {
          format = "{} used";
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
          format = "{temperatureC}°C temp";
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
      	font-family: CaskaydiaCove Nerd Font;
      	font-weight: bold;
      	min-height: 20px;
      }

      window#waybar {
      	background: transparent;
      }

      window#waybar.hidden {
      	opacity: 0.2;
      }

      #workspaces button, #clock, #pulseaudio, #custom-mem, #cpu, #temperature, #battery, #tray, #network, #bluetooth {
      	background: transparent;
      	color: #cdd6f4 ;
      	transition: all 0.1s ease-out;
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
      	background: #fab387;
        color: #313244;
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
