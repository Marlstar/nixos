{ pkgs, ... }: {
	programs.git = {
		enable = true;
		package = pkgs.gitFull;
		hooks = {
			commit-msg = ./hooks/commit-msg; # conventional commits warning hook
		};
		settings = {
			user = {
				name = "Marley Reeves";
				email = "marley@marlstar.com";
			};
			init = {
				defaultBranch = "main";
			};
			push = {
				autoSetupRemote = true;
			};
			pull = {
				rebase = true;
			};
			merge = {
				conflictStyle = "zdiff3";
			};
		};
		signing = {
			signByDefault = true;
			format = "openpgp";
		};
		maintenance.enable = true;
	};
}
