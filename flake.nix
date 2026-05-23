{
  description = "My Configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
    in {
      nixosConfigurations.pinkie-pie = lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
          ./modules/flipper.nix
          ./modules/radio.nix
          ./modules/security.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.thewellington = import ./home.nix;
          }
        ];
      };
    };
}
