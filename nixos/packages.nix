{ pkgs, config, nixpkgs-stable, ... }: let
	stablePkgs = import nixpkgs-stable { system = pkgs.system; };
in {
	environment.systemPackages = with pkgs; [
		git
		gcc
		unzip

		hyprland
		xdg-desktop-portal-hyprland

		home-manager

		glxinfo

		discord-ptb
		kotatogram-desktop

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
