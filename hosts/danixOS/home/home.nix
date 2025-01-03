{config, programs, pkgs, ...}:
{

  imports =
  [
    ./home-modules/zsh      #shell
    ./home-modules/kitty    #terminal
    #./home-modules/code     #editor
    ./home-modules/hypr-dotfiles #displaymanager
    ./home-modules/yazi       #explorer TUI
    ./home-modules/swww       #wallpaper
  ];


  home = {
    username = "daniele";
    homeDirectory = "/home/daniele";
    sessionVariables = {
      EDITOR = "code";
      BROWSER = "firefox";
      TERMINAL = "kitty";
      SHELL = "${pkgs.zsh}/bin/zsh";
      GBM_BACKEND= "nvidia-drm";
      #__GLX_VENDOR_LIBRARY_NAME= "nvidia";
      #LIBVA_DRIVER_NAME= "nvidia"; # hardware acceleration
      __GL_VRR_ALLOWED="1";
      WLR_NO_HARDWARE_CURSORS = "1";
      WLR_RENDERER_ALLOW_SOFTWARE = "1";
      CLUTTER_BACKEND = "wayland";
      WLR_RENDERER = "vulkan";
  
      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
    };
    
    stateVersion = "24.11";

    packages = with pkgs;[
      fastfetch
      micro
      yazi
      vim
      firefox
      vscode
    ];
  };


  nixpkgs.config.allowUnfree = true;

}