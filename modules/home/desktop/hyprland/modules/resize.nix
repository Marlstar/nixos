{ ... }: {
	wayland.windowManager.hyprland.settings = {
		binde = [
			# resize
			"$altMod, L, resizeactive, 10 0"
			"$altMod, H, resizeactive, -10 0"
			"$altMod, K, resizeactive, 0 -10"
			"$altMod, J, resizeactive, 0 10"
			# large increments
			"$shiftMod ALT, L, resizeactive, 100 0"
			"$shiftMod ALT, H, resizeactive, -100 0"
			"$shiftMod ALT, K, resizeactive, 0 -100"
			"$shiftMod ALT, J, resizeactive, 0 100"
		];
	};
}
