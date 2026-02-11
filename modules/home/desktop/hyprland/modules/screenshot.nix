{ ... }: {
	wayland.windowManager.hyprland.settings = {
		"$screenshot" = "grimblast --freeze copysave area";

		bind = [
			"$shiftMod, s, exec, $screenshot"
		];
	};
}
