{ pkgs, ... }: {
	home.packages = with pkgs; [
		bat
		ripgrep
		scc
	];
}
