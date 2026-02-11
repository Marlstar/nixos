{ ... }: {
	wayland.windowManager.hyprland.settings = {
		"$terminal" = "kitty";

		bind = [
			"$mainMod, return, exec, $terminal"
		];
	};
}
