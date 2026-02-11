{ ... }: {
	wayland.windowManager.hyprland.settings = {
		bind = [
			# vim bindings, obviously
			"bind = $mainMod, H, movefocus, l"
			"bind = $mainMod, L, movefocus, r"
			"bind = $mainMod, K, movefocus, u"
			"bind = $mainMod, J, movefocus, d"
		];
	};
}
