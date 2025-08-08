{ pkgs, config, nixpkgs-stable, ... }: let
	stablePkgs = import nixpkgs-stable { system = pkgs.system; };
in {
	environment.systemPackages = with pkgs; [
		git
		gcc
		unzip
		wget

		hyprland
		xdg-desktop-portal-hyprland

		home-manager

		glxinfo

		discord-ptb
		kotatogram-desktop
		tor-browser

		grim
		slurp
	
		wl-clipboard
		cliphist

		pamixer

		swww
		neofetch

		prismlauncher
	];
}
