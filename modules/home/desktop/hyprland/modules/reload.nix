{ ... }: {
	wayland.windowManager.hyprland.settings = {
		bind = [
			"$shiftMod, R, exec, hyprctl reload"
			# other stuff is reloaded within modules
		];
	};
}
