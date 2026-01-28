{ ... }: {
	programs.fish.shellAbbrs = {
		sc = "sudo systemctl";
		scu = "sudo systemctl --user";
	};
}
