{
	description = "System configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { nixpkgs, nixpkgs-stable, home-manager, ... }:
		let
			system = "x86_64-linux";
		in {

		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;

			modules = [ ./nixos/configuration.nix ];
			specialArgs = {
				inherit nixpkgs-stable;
			};
		};

		homeConfigurations.gimura = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home-manager/home.nix ];
		};
	};
}
