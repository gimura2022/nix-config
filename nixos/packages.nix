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
    ffmpeg

    gcc
    clang
    clang-tools
    gdb

    home-manager

    grim
    slurp

    wl-clipboard
    cliphist

    pamixer
  ];
}
