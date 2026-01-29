{ ... }: {
	programs.gh = {
		enable = true;
		settings = {
			git_protocol = "https"; # or "ssh"
		};
	};
}
