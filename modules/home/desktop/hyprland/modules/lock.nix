{ ... }: {
	wayland.windowManager.hyprland.settings = {
		"$lock" = "hyprlock";

		bind = [
			"$ctrlMod, L, exec, $lock"
		];
	};
}
