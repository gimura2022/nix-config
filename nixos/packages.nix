{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
		vim
		git
		gcc

		home-manager

		glxinfo

		zapret
	];
}
