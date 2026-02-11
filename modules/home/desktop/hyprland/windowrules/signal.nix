{ ... }: {
	wayland.windowManager.hyprland.settings = {
		windowrule = [{
			name = "Signal";
			"match:class" = "^(signal)$";
			workspace = "10 silent";
		}];
	};
}
