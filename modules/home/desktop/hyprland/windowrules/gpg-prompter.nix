{ ... }: {
	wayland.windowManager.hyprland.settings = {
		windowrule = [{
			name = "GPG Password Prompt";
			"match:class" = "^(gcr-prompter)$";
			stay_focused = "on";
		}];
	};
}
