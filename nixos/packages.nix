{ pkgs, nixpkgs-stable, config, ... }: {
	environment.systemPackages = with pkgs; [
		git
		unzip
		wget
		gnumake
		bear
		cmake
		ninja

		jetbrains.idea-community
		direnv

		mpv
		gimp
		texlive.combined.scheme-full
		
		gcc
		clang
		clang-tools
		gdb

		qemu

		clisp

		ghc
		cabal-install

		ocaml
		dune_3
		ocamlPackages.ocamlformat

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
