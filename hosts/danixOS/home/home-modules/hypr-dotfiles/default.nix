{ config, pkgs, inputs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
	  systemd.enable = true;
	 settings = {

	   "$mod" = "SUPER";
	   "$terminal" = "kitty";
	   "$browser" = "firefox";

	   	monitor = 
	   	[
	   		",preferred,auto, 1"	
	   	];

		xwayland = {
			force_zero_scaling = true;
		};

		general = {
			gaps_in = 6;
			gaps_out = 6;
			border_size = 2;
			layout = "dwindle";
			allow_tearing = true;
		};
	   	
		input = {
			kb_layout = "it";
			follow_mouse = true;
			touchpad  = {
				natural_scroll = true;
			};
			accel_profile = "flat";
			sesitivity = 0;
		};

    	bind =
      	[
        	"$mod, F, exec, firefox"
			"$mod, T, exec, kitty"
			"$mod, Q, killactive,"
			"$mod, M, exit"

		];

		
		};

    #plugins = [
    #  inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
    #];	
    
  };#end wayland.windowManager brackets!
}
