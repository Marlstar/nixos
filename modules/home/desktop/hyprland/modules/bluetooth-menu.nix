{ ... }: {
	wayland.windowManager.hyprland.settings = {
		"$bluetoothmenu" = "kitty --class bluetui bluetui";

		bind = [
			"$mainMod, B, exec, $bluetoothmenu"
		];
	};
}
