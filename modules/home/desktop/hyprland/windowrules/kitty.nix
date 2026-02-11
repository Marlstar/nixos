{ ... }: {
	wayland.windowManager.hyprland.settings = {
		windowrule = [{
			name = "Kitty";
			"match:class" = "^(kitty)$";
			scroll_touchpad = 0.7;
		}];
	};
}
