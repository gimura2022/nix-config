{ pkgs, config, nixpkgs-stable, ... }: let
	stablePkgs = import nixpkgs-stable { system = pkgs.system; };
in {
	environment.systemPackages = with pkgs; [
		vim
		git
		gcc

		home-manager

		glxinfo

		zapret
	];
}
