{ lib, config, pkgs, ... }: {
	options = {
		users.main = {
			enable = lib.mkEnableOption "enable user themarlstar";
			username = lib.mkOption {
				default = "themarlstar";
			};
			shell = lib.mkOption {
				default = pkgs.fish;
			};
			# groups = lib.mkOptionDefault [ "wheel" "input" "uinput" ];
			groups = lib.mkOption {
				default = [ "wheel" "input" "uinput" ];
			};
		};
	};

	config = lib.mkIf config.users.main.enable {
		users.users.${config.users.main.username} = {
			isNormalUser = true;
			extraGroups = config.users.main.groups;
			home = "/home/${config.users.main.username}";
			shell = pkgs.fish;
		};
	};
}
