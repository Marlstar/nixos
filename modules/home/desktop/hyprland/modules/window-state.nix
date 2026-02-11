{ ... }: {
	wayland.windowManager.hyprland.settings = {
		bind = [
			"$mainMod, F, fullscreen"
			"$mainMod, V, togglefloating,"
			"$mainMod, P, pin"
			"$mainMod, Q, killactive"
			"$shiftMod, Q, forcekillactive"
		];
	};
}
