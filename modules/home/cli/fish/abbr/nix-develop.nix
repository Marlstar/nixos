{ ... }: {
	programs.fish.shellAbbrs = {
		dev = "nix develop -c $SHELL";
	};
}
