{ ... }: {
	wayland.windowManager.hyprland.settings = {
		bind = [
			"$mainMod, N, exec, swaync-client -t" # toggle
			"$shiftMod, N, exec, swaync-client -C && swaync-client -cp" # remove latest notification and close

			# reload
			"$shiftMod, R, exec, swaync-client --reload-config & swaync-client -rs"
		];
	};
}
