{ pkgs, ... }:
{
  programs.zsh.loginShellInit = "Hyprland";

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
    config.common.default = "*";
  };

  hardware.graphics.enable = true;

  services.pulseaudio = {
    enable = true;
    support32Bit = true;
  };

  console.useXkbConfig = true;

  fonts.fontDir.enable = true;
}
