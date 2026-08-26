{ home, pkgs, ... }: home {
	home.packages = with pkgs; [
		croc
	];
}
