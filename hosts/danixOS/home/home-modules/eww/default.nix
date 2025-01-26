###########todo##########
{ config, pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.eww-wayland
  ];
  
  home.file.".config/eww/".source=./eww-widgets/eww;
  # programs.eww = {
  #   enable = true;
  #   configDir = "${config.home.homeDirectory}/.config/eww";
  #   enableZshIntegration = true;
  # };

}