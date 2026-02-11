{ ... }: {
	wayland.windowManager.hyprland.settings = {
		# Fixes some xwayland dragging issues, apparently
		windowrule = [{
			name = "windowrule-2";
			no_focus = "on";
			"match:class" = "^$";
			"match:title" = "^$";
			"match:xwayland" = 1;
			"match:float" = 1;
			"match:fullscreen" = 0;
			"match:pin" = 0;
		}];
	};
}
