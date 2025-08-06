{
	wayland.windowManager.hyprland = {
		enable = true;
		systemd.enable = true;
		xwayland.enable = true;

		settings = {
			"$mainMod" = "SUPER";
			monitor = ",1920x1080@90,auto,1";

			env = [
				"XDG_CURRENT_DESKTOP,Hyprland"
				"XDG_SESSION_TYPE,wayland"
				"XDG_SESSION_DESKTOP,Hyprland"
				"XCURSOR_SIZE,36"
				"QT_QPA_PLATFORM,wayland"
				"XDG_SCREENSHOTS_DIR,~/screens"
			];

			debug = {
				disable_logs = false;
				enable_stdout_logs = true;
			};

			input = {
				kb_layout = "us,ru";
				kb_options = "grp:win_space_toggle";

				follow_mouse = 1;

				touchpad = {
					natural_scroll = false;
				};

				sensitivity = 0;
			};

			general = {
				gaps_in = 5;
				gaps_out = 20;
				border_size = 3;
				"col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
				"col.inactive_border" = "rgba(595959aa)";

				layout = "dwindle";
			};

			decoration = {
				rounding = 10;

				blur = {
					enabled = true;
					size = 16;
					passes = 2;
					new_optimizations = true;
				};
			};

			animations = {
				enabled = true;

				bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

				animation = [
					"windows,		 1, 7,	myBezier"
					"windowsOut,	1, 7,	default, popin 80%"
					"border,			1, 10, default"
					"borderangle, 1, 8,	default"
					"fade,				1, 7,	default"
					"workspaces,	1, 6,	default"
				];
			};

			dwindle = {
				pseudotile = true;
				preserve_split = true;
			};

			gestures = {
				workspace_swipe = true;
				workspace_swipe_fingers = 3;
				workspace_swipe_invert = false;
				workspace_swipe_distance = 200;
				workspace_swipe_forever = true;
			};

			misc = {
				animate_manual_resizes = true;
				animate_mouse_windowdragging = true;
				enable_swallow = true;
				disable_hyprland_logo = true;
			};

			exec-once = [
				"swww-daemon"
				"swww img ~/nix/wallpaper.jpg"
				"waybar"
				"wl-paste --type text --watch cliphist store"
				"wl-paste --type image --watch cliphist store"
			];

			bind = [
				"$mainMod, Return, exec, alacritty"
				"$mainMod, B, exec, firefox"
				"$mainMod, W, exec, wofi -S drun"
				"$mainMod, L, exec, wlogout"

				"$mainMod SHIFT, S, exec, grim -g \"$(slurp)\" - | wl-copy"

				"$mainMod, Q, killactive,"
				"$mainMod, M, exit,"
				"$mainMod, F, togglefloating,"
				"$mainMod, J, togglesplit, # dwindle"

				"$mainMod, left,	movefocus, l"
				"$mainMod, right, movefocus, r"
				"$mainMod, up,		movefocus, u"
				"$mainMod, down,	movefocus, d"

				"$mainMod SHIFT, left,	swapwindow, l"
				"$mainMod SHIFT, right, swapwindow, r"
				"$mainMod SHIFT, up,		swapwindow, u"
				"$mainMod SHIFT, down,	swapwindow, d"

				"$mainMod CTRL, left,	resizeactive, -60 0"
				"$mainMod CTRL, right, resizeactive,	60 0"
				"$mainMod CTRL, up,		resizeactive,	0 -60"
				"$mainMod CTRL, down,	resizeactive,	0	60"

				"$mainMod, 1, workspace, 1"
				"$mainMod, 2, workspace, 2"
				"$mainMod, 3, workspace, 3"
				"$mainMod, 4, workspace, 4"
				"$mainMod, 5, workspace, 5"
				"$mainMod, 6, workspace, 6"
				"$mainMod, 7, workspace, 7"
				"$mainMod, 8, workspace, 8"
				"$mainMod, 9, workspace, 9"
				"$mainMod, 0, workspace, 10"

				"$mainMod SHIFT, 1, movetoworkspacesilent, 1"
				"$mainMod SHIFT, 2, movetoworkspacesilent, 2"
				"$mainMod SHIFT, 3, movetoworkspacesilent, 3"
				"$mainMod SHIFT, 4, movetoworkspacesilent, 4"
				"$mainMod SHIFT, 5, movetoworkspacesilent, 5"
				"$mainMod SHIFT, 6, movetoworkspacesilent, 6"
				"$mainMod SHIFT, 7, movetoworkspacesilent, 7"
				"$mainMod SHIFT, 8, movetoworkspacesilent, 8"
				"$mainMod SHIFT, 9, movetoworkspacesilent, 9"
				"$mainMod SHIFT, 0, movetoworkspacesilent, 10"

				"$mainMod, mouse_down, workspace, e+1"
				"$mainMod, mouse_up, workspace, e-1"

				"$mainMod, F3, exec, brightnessctl -d *::kbd_backlight set +33%"
				"$mainMod, F2, exec, brightnessctl -d *::kbd_backlight set 33%-"

				", XF86AudioRaiseVolume, exec, pamixer -i 2 "
				", XF86AudioLowerVolume, exec, pamixer -d 2 "
				", XF86AudioMute, exec, pamixer -t"
				", XF86AudioMicMute, exec, pamixer --default-source -m"
				
				", XF86MonBrightnessDown, exec, brightnessctl set 5%- "
				", XF86MonBrightnessUp, exec, brightnessctl set +5% "

				''$mainMod SHIFT, N, exec, alacritty -e sh -c "rb"''
				''$mainMod SHIFT, C, exec, alacritty -e sh -c "conf"''
				'', Print, exec, grim -g "$(slurp)" - | swappy -f -''
			];

			bindm = [
				"$mainMod, mouse:272, movewindow"
				"$mainMod, mouse:273, resizewindow"
			];
		};
	};
}
