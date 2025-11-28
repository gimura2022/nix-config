{
  pkgs,
  nixpkgs-stable,
  config,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    git
    unzip
    wget
    gnumake
    bear
    cmake
    ninja
    fd

    jetbrains.idea-community
    direnv

    mpv
    gimp
    texlive.combined.scheme-full

    gcc
    clang
    clang-tools
    gdb

    qemu

    clisp

    ghc
    cabal-install

    sfml
    renderdoc

    godot_4

    pkg-config

    mandoc

    blender
    ffmpeg

    home-manager

    discord-ptb
    kotatogram-desktop
    element-desktop

    grim
    slurp

    wl-clipboard
    cliphist

    pamixer

    swww
    neofetch

    prismlauncher

    nixfmt-tree
  ];
}
