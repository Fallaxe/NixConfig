###########todo##########
{ config, pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.eww
  ];
  
  home.file.".config/eww/".source=./hellow;
  # programs.eww = {
  #   enable = true;
  #   configDir = "${config.home.homeDirectory}/.config/eww";
  #   enableZshIntegration = true;
  # };

}