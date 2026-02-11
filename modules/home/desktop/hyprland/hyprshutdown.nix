{ pkgs, ... }: {
	home.packages = with pkgs; [
		hyprshutdown
	];

	wayland.windowManager.hyprland.settings = {
		"$exit" = "hyprshutdown";
	};
}
