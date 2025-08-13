{
	programs.bash = {
		enable = true;

		shellAliases = {
			hs = "home-manager switch --flake ~/nix";
			ss = "sudo nixos-rebuild switch --flake ~/nix --impure";
			v = "vim";
			c = "source neocd1";
		};
	};
}
