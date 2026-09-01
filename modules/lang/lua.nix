{ home, pkgs, ... }: home {
	home.packages = with pkgs; [
		lua-language-server
	];
}
