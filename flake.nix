{
  description = "My Configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";  
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, home-manager, ...  }: 
    let 
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    nixosConfigurations = {
      rainbow-dash = lib.nixosSystem {
        inherit system;
        modules = [ 
	  ./configuration.nix
          ./modules/flipper.nix
          ./modules/radio.nix
          ./modules/security.nix
        ];
      };
    };

    defaultPackage.${system} = home-manager.defaultPackage.${system};

    homeConfigurations = {
      thewellington = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix ];
      };
      mariawellington = home-manager.lib.homeMangerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix ];
      programs.home-manager.useGlobalPkgs = true;
      
      };
    };
  };
}
