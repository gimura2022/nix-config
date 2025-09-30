{
	programs.zsh = {
		enable = true;

		enableCompletion = true;
    		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;

		shellAliases = {
			hs = "home-manager switch --flake ~/nix";
			ss = "sudo nixos-rebuild switch --flake ~/nix";
			v = "vim";
			c = "cd";
		};

		oh-my-zsh = {
			enable = true;

			plugins = [
				"git"
			];

			theme = "fishy";
		};
	};
}
