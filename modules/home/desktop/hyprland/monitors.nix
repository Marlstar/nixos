{ ... }: {
	wayland.windowManager.hyprland.settings = {
		monitor = [
			"eDP-1,1920x1200@60,auto,1"
			"DP-6,3440x1440@240,auto,1"

			# Mirror to any non-specified monitor (laptop only)
			# TODO: make this apply to any device
			", preferred, auto, 1, mirror, eDP-1"
		];

		misc.vrr = true;
	};
}
