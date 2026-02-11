{ ... }: {
	wayland.windowManager.hyprland.settings = {
		bindm = [
			# Move windows with LMB
			"$mainMod, mouse:272, movewindow"

			# Resize windows with RMB
			"$mainMod, mouse:273, resizewindow"
		];
	};
}
