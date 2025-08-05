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

	programs.git = {
		enable = true;

		userEmail = "gimura0001@gmail.com";
		userName = "gimura";
	};

	programs.btop.enable = true;
	
	programs.kitty.enable = true;

	programs.alacritty.enable = true;

	imports = [
		./hyprland.nix
	];
}
