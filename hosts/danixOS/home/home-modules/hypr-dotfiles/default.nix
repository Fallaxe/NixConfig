{ config, pkgs, inputs, ... }:
{
  wayland.windowManager.hyprland = {
  enable = true;
  xwayland.enable = true;
	systemd.enable = true;
	package  = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
	 settings = {

	   "$mainMod" = "SUPER";
	   "$terminal" = "kitty";
	   "$browser" = "firefox";

	   	monitor = 
	   	[
	   		",preferred,auto, auto"	
	   	];

		xwayland = {
			force_zero_scaling = true;
		};

		general = {
			gaps_in = 6;
			gaps_out = ["42, 6, 6, 6"];
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

		decoration = {
			rounding = 10;

			# Change transparency of focused and unfocused windows
			active_opacity = 1.0;
			inactive_opacity = 1.0;

			shadow = {
				enabled = true;
				range = 4;
				render_power = 3;
				#color = rgba(1a1a1aee);
			};

			# https://wiki.hyprland.org/Configuring/Variables/#blur
			blur = {
				enabled = true;
				size = 3;
				passes = 1;

				vibrancy = 0.1696;
			};
		};

		device = {
			name = "epic-mouse-v1";
			sensitivity = "0.5";
		};

		gestures = {
			workspace_swipe = false;
		};


		exec-once = [
		  "swww-daemon & wait $! && swww img ~/wallpapers/wall1.png"
		  "eww daemon & wait $! && eww open bar"
		];

    	bind =
      	[
        	"$mainMod, F, exec, firefox"
			"$mainMod, T, exec, kitty"
			"$mainMod, Q, killactive,"
			"$mainMod, M, exit"
			"$mainMod, C, exec, code"
			"$mainMod, E, exec, kitty -e yazi"

			# Move focus with mainMod + arrow keys
			"$mainMod, left, movefocus, l"
			"$mainMod, right, movefocus, r"
			"$mainMod, up, movefocus, u"
			"$mainMod, down, movefocus, d"
			# Switch workspaces with mainMod + [0-9]
			"$mainMod, 1, workspace, 1"
			"$mainMod, 2, workspace, 2"
			"$mainMod, 3, workspace, 3"
			"$mainMod, 4, workspace, 4"
			"$mainMod, 5, workspace, 5"
			"$mainMod, 6, workspace, 6"
			"$mainMod, 7, workspace, 7"
			"$mainMod, 8, workspace, 8"
			"$mainMod, 9, workspace, 9"
			"$mainMod, 0, workspace, 10"

			# Move active window to a workspace with mainMod + SHIFT + [0-9]
			"$mainMod SHIFT, 1, movetoworkspace, 1"
			"$mainMod SHIFT, 2, movetoworkspace, 2"
			"$mainMod SHIFT, 3, movetoworkspace, 3"
			"$mainMod SHIFT, 4, movetoworkspace, 4"
			"$mainMod SHIFT, 5, movetoworkspace, 5"
			"$mainMod SHIFT, 6, movetoworkspace, 6"
			"$mainMod SHIFT, 7, movetoworkspace, 7"
			"$mainMod SHIFT, 8, movetoworkspace, 8"
			"$mainMod SHIFT, 9, movetoworkspace, 9"
			"$mainMod SHIFT, 0, movetoworkspace, 10
"
			# Example special workspace (scratchpad)
			"$mainMod, S, togglespecialworkspace, magic"
			"$mainMod SHIFT, S, movetoworkspace, special:magic"

			# Scroll through existing workspaces with mainMod + scroll
			"$mainMod, mouse_down, workspace, e+1"
			"$mainMod, mouse_up, workspace, e-1"
		];

		bindm =[
			# Move/resize windows with mainMod + LMB/RMB and dragging
			"$mainMod, mouse:272, movewindow"
			"$mainMod, mouse:273, resizewindow"
		];

		bindel = [
				# Laptop multimedia keys for volume and LCD brightness
			",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
			",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
			",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
			",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
			",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
			",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
		];

		bindl = 
		[
			# Requires playerctl
			", XF86AudioNext, exec, playerctl next"
			", XF86AudioPause, exec, playerctl play-pause"
			", XF86AudioPlay, exec, playerctl play-pause"
			", XF86AudioPrev, exec, playerctl previous"
		];

		windowrulev2 = 
		[
			"suppressevent maximize, class:.*"
			"nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
		];

		# windowrule = [
		# 	"nofocus, bar"
		# ]
		
	};

  #plugins = [
  #  inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
  #];	
    
  };#end wayland.windowManager brackets!
}
