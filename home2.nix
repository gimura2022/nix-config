{ config, pkgs, ... }: {
	home = {
		username = "gimura";
		homeDirectory = "/home/gimura";
		stateVersion = "23.11";
	};

	programs.bash = {
		enable = true;
		shellAliases = {
			hs = "home-manager switch --flake ~/nix";
			ss = "sudo nixos-rebuild switch --flake ~/nix";
			v = "vim";
		};
	};

	programs.git.enable = true;

	programs.btop.enable = true;
	
	programs.kitty.enable = true;

	programs.alacritty.enable = true;

	wayland.windowManager.hyprland = {
		enable = true;
		xwayland.enable = true;

		settings = {
			"$mod" = "SUPER";

			monitor = ",1920x1080@90,auto,1";

			env = [
				"XDG_CURRENT_DESKTOP,Hyprland"
				"XDG_SESSION_TYPE,wayland"
				"XDG_SESSION_DESKTOP,Hyprland"
				"XCURSOR_SIZE,36"
				"QT_QPA_PLATFORM,wayland"
				"XDG_SCREENSHOTS_DIR,~/screens"
			];

			bind = [
				"$mod, Q, killactive"
				"$mod, Return, exec, alacritty"
			];
		};
	};
}
