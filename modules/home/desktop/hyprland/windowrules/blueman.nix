{ ... }: {
	wayland.windowManager.hyprland.settings = {
		windowrule = [{
			name = "Bluetooth Devices Popup";
			"match:title" = "(Bluetooth Devices)(.*)";
			float = "on";
			size = "1000 600";
			center = "on";
		}];
	};
}
