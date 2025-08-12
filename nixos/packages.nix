{ pkgs, config, nixpkgs-stable, ... }: let
	stablePkgs = import nixpkgs-stable { system = pkgs.system; };
in {
	nixpkgs.config.packageOverrides = pkgs: {
		neocd = pkgs.callPackage /home/gimura/projects/neocd/default.nix;
	};

	environment.systemPackages = with pkgs; [
		git
		gcc
		unzip
		wget
		gnumake
		gdb
		clisp
		mandoc

		~/projects/neocd/default.nix

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
