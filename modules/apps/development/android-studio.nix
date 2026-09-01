{ home, pkgs, ... }: home {
	home.packages = with pkgs; [
		androidStudioPackages.stable
		android-studio-tools
	];
}
