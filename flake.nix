{
  description = "My daily-driver Flake";
  
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    agenix.url = "github:ryantm/agenix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs"; 
    };
  };

  outputs = { nixpkgs, home-manager, agenix, ... }: {
    nixosConfigurations.chloe = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./nixos/chloe/configuration.nix
        agenix.nixosModules.default
        home-manager.nixosModules.home-manager
	{
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.fwam.imports = [ ./home-manager/fwam.nix ];
	}
      ];
    };
  };
}

