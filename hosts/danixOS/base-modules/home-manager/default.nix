{ config, pkgs, inputs, ... }:
{
    imports = 
    [
        inputs.home-manager.nixosModules.danixOS
    ];

    home-manager = {
        extraSpecialArgs = {inherit inputs;};
        users ={
            "daniele" = import ../home;
        };
    };
}