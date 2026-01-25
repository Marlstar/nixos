{ pkgs, ... }: {
	home.packages = with pkgs; [
		bat
		lazygit
		scc
	];
}
