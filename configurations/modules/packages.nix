{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    unzip
    wget
    fd
    ffmpeg

    man-pages
    man-pages-posix
  ];
}
