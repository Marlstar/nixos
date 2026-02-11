{ pkgs, ... }: {
	home.packages = with pkgs; [
		hyprpicker
	];

	wayland.windowManager.hyprland.settings = {
		bind = [
			"$shiftMod, C, exec, hyprpicker -f hex | wl-copy"
		];
	};
}
