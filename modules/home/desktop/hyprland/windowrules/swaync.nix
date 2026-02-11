{ ... }: {
	wayland.windowManager.hyprland.settings = {
		layerrule = [{
			name = "SwayNC";
			blur = "on";
			"match:namespace" = "swaync-control-center";
		}];
	};
}
