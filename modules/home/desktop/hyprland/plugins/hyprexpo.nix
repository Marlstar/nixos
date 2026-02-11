{ inputs, pkgs, ... }: {
	wayland.windowManager.hyprland = {
		plugins = [
			inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprexpo
		];

		settings = {
			gestures.gesture = [ "3, up, dispatcher, hyprexpo:expo," ];
			plugin.hyprexpo = {
				columns = 3;
				workspace_method = "first 1";
			};
		};
	};
}
