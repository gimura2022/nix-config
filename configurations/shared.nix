{
  config,
  lib,
  pkgs,
  nixvim,
  ...
}:
{
  imports = [
    ./packages.nix
    ./modules/bundle.nix
    ../nixvim/nixvim.nix

    nixvim.nixosModules.nixvim
  ];

  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  boot.kernelPackages = pkgs.linuxPackages_latest;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 5d";
  };

  programs.zsh.enable = true;

  users.users.gimura = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "input"
      "networkmanager"
      "audio"
    ];
    shell = pkgs.zsh;
  };

  time.timeZone = "Europe/Moscow";

  networking.networkmanager.enable = true;

  system.stateVersion = "25.05";
}
