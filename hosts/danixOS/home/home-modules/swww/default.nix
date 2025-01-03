{ config, pkgs, inputs, ... }:
{
  home.packages = {
    pkgs.swww
  };

  home.file."wallpapers/wall1.png".source="./wallpapers/wall1.png"
}