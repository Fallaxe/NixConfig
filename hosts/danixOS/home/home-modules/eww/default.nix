###########todo##########
{ config, pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.eww-wayland
  ];
  
  home.file.".config/eww/".source=./bar_easy;
  # programs.eww = {
  #   enable = true;
  #   configDir = "${config.home.homeDirectory}/.config/eww";
  #   enableZshIntegration = true;
  # };

}