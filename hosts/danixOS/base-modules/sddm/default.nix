{config, pkgs, ...}:
{
  #enable  display Manager
  services.displayManager = {
  	enable = true;
	sddm ={
		enable = true;
	  	wayland.enable = true;
	};

	defaultSession ="hyprland";
  };

  #tema
  services.displayManager.sddm.theme = "breeze";
}