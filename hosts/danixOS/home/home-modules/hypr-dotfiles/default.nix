{ config, pkgs, inputs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
	systemd.enable = true;
	package  = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
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
			sensitivity = 0;
		};

		decoration {
			rounding = 10;

			# Change transparency of focused and unfocused windows
			active_opacity = 1.0;
			inactive_opacity = 1.0;

			shadow {
				enabled = true;
				range = 4;
				render_power = 3;
				color = rgba(1a1a1aee);
			};

			# https://wiki.hyprland.org/Configuring/Variables/#blur
			blur {
				enabled = true;
				size = 3;
				passes = 1;

				vibrancy = 0.1696;
			};
		};

    	bind =
      	[
        	"$mod, F, exec, firefox"
			"$mod, T, exec, kitty"
			"$mod, Q, killactive,"
			"$mod, M, exit"
			"$mod, C, exec, code"

		];

		
		};

    #plugins = [
    #  inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
    #];	
    
  };#end wayland.windowManager brackets!
}
