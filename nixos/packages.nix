{ pkgs, config, nixpkgs-stable, ... }: let
	stablePkgs = import nixpkgs-stable { system = pkgs.system; };
in {
	nixpkgs.config.packageOverrides = pkgs: {
		neocd = pkgs.callPackage /home/gimura/projects/neocd/default.nix { };
	};

	environment.systemPackages = with pkgs; [
		git
		unzip
		wget
		gnumake
		bear
		cmake
		
		gcc
		clang
		gdb
		clisp

		mandoc

		jetbrains.idea-community-bin

		blender

		neocd

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
