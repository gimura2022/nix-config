{ config, lib, pkgs, nixvim, ... }: {
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./modules/bundle.nix
		./nixvim/nixvim.nix

		nixvim.nixosModules.nixvim
	];

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	nix.gc = {
		automatic = true;          
		dates = "weekly";        
		options = "--delete-older-than 4d"; 
	};

	nixpkgs.config.allowUnfree = true;
	nixpkgs.config.allowBroken = true;

	users.users.gimura = {
		isNormalUser = true;
		extraGroups = [ "wheel" "input" "networkmanager" "audio" ];
	};

	time.timeZone = "Europe/Moscow";

	programs.bash.loginShellInit = "Hyprland";

	xdg.portal.enable = true;
	xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

	hardware.graphics.enable = true;

	services.pulseaudio.enable = true;
	services.pulseaudio.support32Bit = true;

	i18n.consoleUseXkbConfig = true;

	fonts.fontDir.enable = true;

	networking.hostName = "nixos";
	networking.networkmanager.enable = true;
	
	powerManagement.cpuFreqGovernor = "powersave";

	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	boot.kernelPackages = pkgs.linuxPackages_latest;

	system.stateVersion = "25.05";
}
