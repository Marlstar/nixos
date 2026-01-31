{
	description = "Nixos config flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		hyprland.url = "github:hyprwm/Hyprland";
		hyprland-plugins = {
			url = "github:hyprwm/hyprland-plugins";
			inputs.hyprland.follows = "hyprland";
		};

		millennium = {
			url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		stylix = {
			url = "github:nix-community/stylix";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		tinted-schemes = {
			flake = false;
			url = "github:tinted-theming/schemes";
		};

		import-tree.url = "github:vic/import-tree";
	};

	outputs = { self, nixpkgs, ... }@inputs: let
		mkSystem = name: nixpkgs.lib.nixosSystem {
			specialArgs = { inherit inputs; };
			modules = [
				./hosts/common/configuration.nix
				./hosts/${name}/configuration.nix
				{ networking.hostName = name; }
				(inputs.import-tree ./modules/nixos)
				inputs.home-manager.nixosModules.default
				inputs.stylix.nixosModules.stylix
			];
		};
	in {
		nixosConfigurations.skultikpc = mkSystem "skultikpc";
	};
}
