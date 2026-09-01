{ home, lib, pkgs, ... }: home {
	programs.steam.config.apps."1172620" = {
		name = "Sea of Thieves";
		launchOptions.wrappers = [
			(lib.getExe pkgs.gamemode)
		];
	};
}
