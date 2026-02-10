{ pkgs, ... }: {
	home.packages = with pkgs; [
		dconf
	];

	gtk = {
		enable = true;
	# 	colorScheme = "dark";
	# 	theme = {
	# 		name = "Catppuccin-Mauve-Dark";
	# 		package = pkgs.magnetic-catppuccin-gtk;
	# 	};
		iconTheme = {
			name = "candy-icons";
			package = pkgs.candy-icons;
		};
	# 	gtk3 = {
	# 		extraConfig.gtk-application-prefer-dark-theme = true;
	# 	};
	};

	dconf.settings = {
		"org/gnome/desktop/interface" = {
			color-scheme = "prefer-dark";
		};
	};
}
