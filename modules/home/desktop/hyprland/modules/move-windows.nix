{ ... }: {
	wayland.windowManager.hyprland.settings = {
		bind = [
			# move window around
			"$shiftMod, H, movewindow, l"
			"$shiftMod, L, movewindow, r"
			"$shiftMod, K, movewindow, u"
			"$shiftMod, J, movewindow, d"
		];
	};
}
