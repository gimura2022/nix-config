{
  config,
  lib,
  pkgs,
  nixvim,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/bundle.nix
    ../shared.nix
    ../graphics.nix
  ];

  swapDevices = [
    {
      device = "/swapfile";
      size = 16 * 1024;
    }
  ];

  networking.hostName = "nixos";
}
