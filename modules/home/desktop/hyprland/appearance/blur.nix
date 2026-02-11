{ ... }: {
	wayland.windowManager.hyprland.settings = {
		decoration = {
			# https://wiki.hyprland.org/Configuring/Variables/#blur
			blur = {
				enabled = true;
				size = 2;
				passes = 2;

				vibrancy = 0.1696;
			};
		};
	};
}
