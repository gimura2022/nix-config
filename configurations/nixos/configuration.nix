{
  imports = [
    ./hardware-configuration.nix
    ./modules/
    ../modules
    ../graphics
  ];

  networking.hostName = "nixos";

  system.stateVersion = "25.05";
}
