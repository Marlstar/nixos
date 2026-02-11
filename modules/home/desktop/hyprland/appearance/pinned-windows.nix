{ ... }: {
	wayland.windowManager.hyprland.settings = {
		windowrule = [{
			name = "Floating window border colour";
			border_color = "rgba(f38ba8ee)";

			"match:pin" = true;
		}];
	};
}
