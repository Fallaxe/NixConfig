{ config, pkgs, ... }:

{
  home.packages = [pkgs.kitty];
  
  programs.kitty = {
    enable = true;
    
    extraConfig = ''
      background_opacity 0.9
    '';
  };
}