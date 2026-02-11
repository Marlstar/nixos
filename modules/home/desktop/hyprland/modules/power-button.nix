{ ... }: {
	wayland.windowManager.hyprland.settings = {
		bind = [
			", XF86PowerOff, exec, $powermenu"
		];
	};
}
