{ ... }: {
	programs.fish.shellAliases = {
		ls = "eza --icons -a --group-directories-first";
		reload = "source ~/.config/fish/config.fish";
	};
}
