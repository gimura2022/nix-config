{
  config,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./modules/bundle.nix
  ];

  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };

  home = {
    username = "gimura";
    homeDirectory = "/home/gimura";
    stateVersion = "25.05";

    packages = with pkgs; [
      nerd-fonts.caskaydia-cove

      jetbrains.idea-community

      mpv
      gimp

      texlive.combined.scheme-full

      qemu

      renderdoc
      godot_4

      blender

      discord-ptb
      kotatogram-desktop
      element-desktop

      neofetch
      fastfetch
      pfetch

      prismlauncher

      nixfmt-tree

      grim
      slurp

      wl-clipboard
      cliphist

      pamixer
    ];
  };

  fonts = {
    fontconfig = {
      enable = true;

      defaultFonts = {
        serif = [ "CaskaydiaCove Nerd Font" ];
        sansSerif = [ "CaskaydiaCove Nerd Font" ];
        monospace = [ "CaskaydiaCove Nerd Font" ];
      };
    };
  };

  home.pointerCursor =
    let
      getFrom = url: hash: name: {
        gtk.enable = true;
        x11.enable = true;
        name = name;
        size = 48;
        package = pkgs.runCommand "moveUp" { } ''
          					mkdir -p $out/share/icons
          					ln -s ${
                 pkgs.fetchzip {
                   url = url;
                   hash = hash;
                 }
               } $out/share/icons/${name}
          				'';
      };
    in
    getFrom "https://github.com/ful1e5/fuchsia-cursor/releases/download/v2.0.0/Fuchsia-Pop.tar.gz"
      "sha256-BvVE9qupMjw7JRqFUj1J0a4ys6kc9fOLBPx2bGaapTk="
      "Fuchsia-Pop";
}
