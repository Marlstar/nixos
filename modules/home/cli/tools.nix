{ pkgs, ... }: {
	home.packages = with pkgs; [
		bat
		ripgrep
		lazygit
		scc
	];
}
