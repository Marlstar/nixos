{
	description = "Nixos config flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, ... }@inputs: let
		nixosSystem = nixpkgs.lib.nixosSystem;
	in {
		nixosConfigurations.skultikpc = nixosSystem {
			specialArgs = { inherit inputs; };
			modules = [
				./hosts/common/configuration.nix
				./hosts/skultikpc/configuration.nix
				inputs.home-manager.nixosModules.default
			];
		};
	};
}
