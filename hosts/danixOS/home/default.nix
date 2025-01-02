{config, programs, pkgs, ...}:
{
  imports = 
  [
    ./home-modules/zsh    #shell
    ./home-modules/kitty  #terminal
    ./home-modules/code   #editor
    ./home.nix
  ];

}