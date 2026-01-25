{ pkgs, ... }: {
	home.packages = with pkgs; [
		dconf
		magnetic-catppuccin-gtk
	];

	gtk = {
		enable = true;
	# 	colorScheme = "dark";
	# 	theme = {
	# 		name = "Catppuccin-Mauve-Dark";
	# 		package = pkgs.magnetic-catppuccin-gtk;
	# 	};
	# 	iconTheme = {
	# 		name = "Papirus-Dark";
	# 		package = pkgs.catppuccin-papirus-folders.override {
	# 			flavor = "mocha";
	# 			accent = "mauve";
	# 		};
	# 	};
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
