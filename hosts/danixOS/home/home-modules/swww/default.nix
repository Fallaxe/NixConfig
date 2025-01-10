{ config, pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.swww
  ];

  # thanks: https://github.com/NixOS/nixos-artwork/tree/master/wallpapers
  home.file."wallpapers/wall1.png".source=./wallpapers/wall1.png;
  home.file."wallpapers/wall2.png".source=./wallpapers/wall2.png;
  
}