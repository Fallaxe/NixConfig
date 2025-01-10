###########todo##########
{ config, pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.eww
  ];

  programs.eww = {
    enable = true;
    configDir = "${config.home.homeDirectory}/.config/eww";
    enableZshIntegration = true;
  };

}