{ ... }: {
	wayland.windowManager.hyprland.settings = {
		windowrule = [{
			name = "Ignore app maximise requests";
			suppress_event = "maximize";
			"match:class" = ".*";
		}];
	};
}
