{ lib, ... }: {
	programs.wleave = {
		enable = true;
		settings = {
			# -l ~/.config/wlogout/layout -C ~/.config/wleave/style.css
			# $powermenu = wleave --buttons-per-row 6 --margin-top 500 --margin-bottom 500 --layout /home/themarlstar/.config/wleave/layout --css /home/themarlstar/.config/wleave/style.css

			buttons-per-row = "1/2";
			close-on-lost-focus = true;
			margin = 200;
			button-aspect-ratio = "1/1";
			show-keybinds = true;
			buttons = [
				{
					label = "lock";
					action = "hyprlock";
					text = "Lock";
					keybind = "l";
				}
				{
					label = "hibernate";
					action = "systemctl hibernate";
					text = "Hibernate";
					keybind = "h";
				}
				{
					label = "logout";
					action = [
						{
							"$DESKTOP_SESSION" = "hyprland";
							shell = "hyprctl dispatch exit";
						}
					];
					text = "Logout";
					keybind = "e";
				}
				{
					label = "shutdown";
					action = "systemctl poweroff";
					text = "Shutdown";
					keybind = "x";
				}
				{
					label = "suspend";
					action = "systemctl suspend";
					text = "Suspend";
					keybind = "s";
				}
				{
					label = "reboot";
					action = "systemctl reboot";
					text = "Reboot";
					keybind = "r";
				}
			];
		};
	};
}
