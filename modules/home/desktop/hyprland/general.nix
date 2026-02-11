{ ... }: {
	wayland.windowManager.hyprland.settings = {
		general = {
			gaps_in = 5;
			gaps_out = 10;

			border_size = 2;

			resize_on_border = false; # drag window borders to resize

			allow_tearing = false;
		};
	};

	stylix.targets.hyprland.enable = false;
}
