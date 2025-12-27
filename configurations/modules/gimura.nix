{ pkgs, ... }:
{
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
}
