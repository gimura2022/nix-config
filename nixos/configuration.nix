{ config, lib, pkgs, nixvim, ... }: {
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./modules/bundle.nix
		./nixvim/nixvim.nix

		nixvim.nixosModules.nixvim
	];

	powerManagement.cpuFreqGovernor = "powersave";

	boot.loader = {
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
	};

	boot.kernelPackages = pkgs.linuxPackages_latest;

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	swapDevices = [{
		device = "/swapfile";
		size = 16 * 1024;
	}];

	nix.gc = {
		automatic = true;          
		dates = "weekly";        
		options = "--delete-older-than 5d"; 
	};

	nixpkgs.config = {
		allowUnfree = true;
		allowBroken = true;
	};

	programs.zsh.enable = true;

	users.users.gimura = {
		isNormalUser = true;
		extraGroups = [ "wheel" "input" "networkmanager" "audio" ];
		shell = pkgs.zsh;
	};

	time.timeZone = "Europe/Moscow";

	networking = {
		hostName = "nixos";
		networkmanager.enable = true;
	};

	system.stateVersion = "25.05";
}
