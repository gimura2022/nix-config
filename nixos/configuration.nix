{ config, lib, pkgs, ... }: {
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./zapret.nix
	];

	powerManagement.cpuFreqGovernor = "powersave";
	
	nix.gc = {
		automatic = true;          
		dates = "weekly";        
		options = "--delete-older-than 10d"; 
	};

	nixpkgs.config.allowUnfree = true;
	nixpkgs.config.allowBroken = true;

	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	boot.kernelPackages = pkgs.linuxPackages_zen;

	fonts.fontDir.enable = true;

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	networking.hostName = "nixos";
	networking.networkmanager.enable = true;

	time.timeZone = "Europe/Moscow";

	hardware.graphics.enable = true;

	services.pulseaudio.enable = true;
	services.pulseaudio.support32Bit = true;

	xdg.portal.enable = true;
	xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

	users.users.gimura = {
		isNormalUser = true;
		extraGroups = [ "wheel" "input" "networkmanager" "audio" ];
	};

	i18n.consoleUseXkbConfig = true;

	boot.kernelModules = [ "thinkpad_acpi" ];

	services.thinkfan = {
		enable = true;

		sensors = [
			{
				query = "/sys/devices/platform/coretemp.0/hwmon/hwmon3/temp1_input";
				type = "hwmon";
			}
			{
				query = "/sys/devices/platform/coretemp.0/hwmon/hwmon3/temp2_input";
				type = "hwmon";
			}
			{
				query = "/sys/devices/platform/coretemp.0/hwmon/hwmon3/temp3_input";
				type = "hwmon";
			}
		];

		levels = [
			[0		0	40]
			[1		40	43]
			[2		43	48]
			[3		48	55]
			[6		55	70]
			[7		70	999]
		];
	};

	system.stateVersion = "25.05";
}
