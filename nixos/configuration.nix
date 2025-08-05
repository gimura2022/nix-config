{ config, lib, pkgs, ... }: {
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./zapret.nix
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
	hardware.pulseaudio.enable = true;

	xdg.portal.enable = true;
	xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

	users.users.gimura = {
		isNormalUser = true;
		extraGroups = [ "wheel" "input" "networkmanager" ];
	};

	i18n.consoleUseXkbConfig = true;
	i18n.supportedLocales = [
		"en_US.UTF-8/UTF-8"
		"ru_RU.UTF-8/UTF-8"
	];

	system.stateVersion = "25.05";
}
