{ inputs, pkgs, ... }: {
	wayland.windowManager.hyprland = {
		plugins = [
			inputs.hypr-dynamic-cursors.packages.${pkgs.stdenv.hostPlatform.system}.hypr-dynamic-cursors
		];

		settings = {
			plugin.dynamic-cursors = {
				enabled = true;
				mode = "tilt";
				threshold = 2;
				tilt = {
					limit = 5000; # smaller = more power
				};
				shake.enabled = false;
			};
		};
	};
}
