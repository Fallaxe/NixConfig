{inputs, pkgs, ...}: {

  imports = 
  [
    ./fix-mesa.nix
  ];
  
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };

  hardware = {
    	graphics.enable = true;
  
    	#nvidia.modesetting.enable = true;
  };

  services.pipewire = {
   	enable = true;
   	alsa.enable = true;
   	alsa.support32Bit = true;
   	pulse.enable = true;
   	jack.enable = true;
   };

}