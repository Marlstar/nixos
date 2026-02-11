{ ... }: {
	wayland.windowManager.hyprland.settings = {
		"$fileManager" = "nautilus";

		bind = [
			"$mainMod, E, exec, $fileManager"
		];
	};
}
