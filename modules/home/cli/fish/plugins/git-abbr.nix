{ pkgs, ... }: {
	programs.fish.plugins = [
		{ name = "git-abbr"; src = pkgs.fishPlugins.git-abbr.src; }
	];

	home.packages = with pkgs; [
		git
	];
}
