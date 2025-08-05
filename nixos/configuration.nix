{ config, lib, pkgs, ... }: {
	imports = [
		./hardware-configuration.nix
		./packages.nix
	];

	nixpkgs.config.allowUnfree = true;

	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	fonts.fontDir.enable = true;

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	networking.hostName = "nixos";
	networking.networkmanager.enable = true;

	time.timeZone = "Europe/Moscow";

	hardware.graphics.enable = true;

	users.users.gimura = {
		isNormalUser = true;
		extraGroups = [ "wheel" "input" "networkmanager" ];
	};

	system.stateVersion = "25.05";
}
