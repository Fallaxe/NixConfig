{ config, pkgs, inputs, ... }:
{
    imports = 
    [
        inputs.home-manager.nixosModules.default
    ];

    home-manager = {
        extraSpecialArgs = {inherit inputs;};
        users ={
            "daniele" = import ../home;
        };
    };
}