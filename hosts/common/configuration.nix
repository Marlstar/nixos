{ config, pkgs, inputs, ... }:
{
	nix = {
		settings = {
			experimental-features = [ "nix-command" "flakes" ];
			auto-optimise-store = true;
			download-buffer-size = 524288000; # Fixes the "download buffer full" warning


			# Hyprland cachix
			substituters = ["https://hyprland.cachix.org"];
			trusted-substituters = ["https://hyprland.cachix.org"];
			trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
		};
		gc = {
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 28d";
		};
		optimise = {
			automatic = true;
			dates = "2:00";
		};
	};
}
