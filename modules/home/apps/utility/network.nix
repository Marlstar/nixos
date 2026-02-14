{ pkgs, ... }: {
	home.packages = with pkgs; [
		nmgui
		networkmanagerapplet
	];
}
