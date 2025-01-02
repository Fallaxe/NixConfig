{ config, pkgs, ... }:

{
  programs.code = {
    enable = true;
    
    extraConfig = ''
      background_opacity 0.9
    '';
  };
}