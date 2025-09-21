{ pkgs, config, nixpkgs-stable, ... }: let
	stablePkgs = import nixpkgs-stable { system = pkgs.system; };
in {
	environment.systemPackages = with pkgs; [
		git
		unzip
		wget
		gnumake
		bear
		cmake
		ninja
		
		gcc
		clang
		clang-tools
		gdb

		clisp

		ghc
		cabal-install

		ocaml
		dune_3
		ocamlPackages.ocamlformat

		rustup
		cargo-generate
		espup
		esp-generate
		espflash
		probe-rs-tools
	
		sfml
		renderdoc

		godot_4

		pkg-config

		mandoc

		blender
		ffmpeg

		home-manager

		glxinfo

		discord-ptb
		kotatogram-desktop
		element-desktop
		tor-browser

		grim
		slurp
	
		wl-clipboard
		cliphist

		pamixer

		swww
		neofetch

		prismlauncher
		duckstation
	];
}
