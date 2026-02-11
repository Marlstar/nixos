{ lib, ... }: let
exclusions = lib.concatStringsSep "|" (map toString [
	# excluded steam app ids here
]);
in {
	wayland.windowManager.hyprland.settings = {
		windowrule = [
			{
				name = "Fullscreen steam games";
				"match:class" = "^(steam_app_(?!(${exclusions})$)[0-9]+)$";
				fullscreen = "on";
			}

			{
				name = "Steam Friends List Window";
				float = "on";
				size = "600 900";
				"match:class" = "steam";
				"match:title" = "Friends List";
			}
		];
	};
}
