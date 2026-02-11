{ ... }: {
	wayland.windowManager.hyprland.settings = {
		"$menu" = "vicinae open";
		"$cmdmenu" = "vicinae open";

		bind = [
			"$mainMod, space, exec, $menu"
			"$shiftMod, space, exec, $cmdmenu"
		];
	};
}
