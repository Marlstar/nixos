{ ... }: {
	wayland.windowManager.hyprland.settings = {
		general.layout = "dwindle";

		dwindle = {
			preserve_split = true;
		};

		# https://wiki.hyprland.org/Configuring/Master-Layout/
		master = {
			new_status = "master";
		};
	};
}
