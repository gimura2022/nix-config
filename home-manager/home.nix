{ config, pkgs, ... }: {
	imports = [
		./modules/bundle.nix
	];

	home = {
		username = "gimura";
		homeDirectory = "/home/gimura";
		stateVersion = "23.11";

		packages = [
			pkgs.nerd-fonts.caskaydia-cove
		];
	};

	fonts = {
		fontconfig.enable = true;
	};
}
