{ config, pkgs, lib, ... }: {
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

	home.pointerCursor = let 
		getFrom = url: hash: name: {
			gtk.enable = true;
			x11.enable = true;
			name = name;
			size = 48;
			package = pkgs.runCommand "moveUp" {} ''
				mkdir -p $out/share/icons
				ln -s ${pkgs.fetchzip {
					url = url;
                			hash = hash;
              			}} $out/share/icons/${name}
          		'';
        	};
    	in getFrom 
        "https://github.com/ful1e5/fuchsia-cursor/releases/download/v2.0.0/Fuchsia-Pop.tar.gz"
        "sha256-BvVE9qupMjw7JRqFUj1J0a4ys6kc9fOLBPx2bGaapTk="
        "Fuchsia-Pop";
}
