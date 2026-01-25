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

		millennium.url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";

		stylix = {
			url = "github:nix-community/stylix";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		tinted-schemes = {
			flake = false;
			url = "github:tinted-theming/schemes";
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
				./modules/nixos
				inputs.home-manager.nixosModules.default
				inputs.stylix.nixosModules.stylix
			];
		};
	};
}
