{ ... }: {
	wayland.windowManager.hyprland.settings = {
		windowrule = [{
			name = "Waydroid";
			"match:title" = "(Waydroid)(.*)";
			float = "on";
			center = "on";
		}];
	};
}
