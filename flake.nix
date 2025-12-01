{
  description = "system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      nixvim,
      ...
    }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [ ./configurations/nixos/configuration.nix ];
        specialArgs = {
          inherit nixvim;
        };
      };

      homeConfigurations."gimura@nixos" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          overlays = [
            (final: prev: {
              stable = import nixpkgs-stable {
                system = prev.system;

                config = {
                  allowUnfree = true;
                  allowBroken = true;
                };
              };
            })
          ];

          config = {
            allowUnfree = true;
            allowBroken = true;
          };

          inherit system;
        };
        modules = [ ./home/gimura/home.nix ];
      };
    };
}
