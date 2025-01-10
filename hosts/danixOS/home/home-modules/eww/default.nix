###########todo##########
{ config, pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.eww
  ];

  programs.eww = {
    enable = true;

  };

}