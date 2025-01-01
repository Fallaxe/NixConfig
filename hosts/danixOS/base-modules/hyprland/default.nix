{inputs, pkgs, ...}: {

  imports = 
  [
    ./fix-mesa.nix
  ];
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };

}