# flake.nix
{
  description = "danixOS flake";
  
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";  # unstable packages!!
	  hyprland.url = "github:hyprwm/Hyprland"; # hyprland development

    home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
       
    };
  };

  outputs = {self, nixpkgs, hyprland, ...} @ inputs: {
    
    # declare an host called "danixOS" and take configuration.nix in his modules
    nixosConfigurations.danixOS = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./hosts/danixOS/configuration.nix
        hyprland.nixosModules.default
      ];
    };
  };
}

