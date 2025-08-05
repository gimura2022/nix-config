{ config, pkgs, ... }: {
	imports = [
		./modules/bundle.nix
	];

	home = {
		username = "gimura";
		homeDirectory = "/home/gimura";
		stateVersion = "23.11";
	};
}
