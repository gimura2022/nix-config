{ pkgs, config, nixpkgs-stable, ... }: let
	stablePkgs = import nixpkgs-stable { system = pkgs.system; };
in {
	environment.systemPackages = with pkgs; [
		vim
		git
		gcc

		hyprland
		xdg-desktop-portal-hyprland

		home-manager

		glxinfo
		discord-ptb

		grim
		slurp
	
		wl-clipboard
		cliphist

		pamixer

		swww

		neofetch

		minecraft
	];
}
