{ pkgs, ... }: {
	programs.gpg = {
		enable = true;
	};

	services.gpg-agent = {
		enable = true;
		pinentry.package = pkgs.pinentry-gtk2;

		defaultCacheTtl = 86400;
		maxCacheTtl = 86400;
		defaultCacheTtlSsh = 86400;
		maxCacheTtlSsh = 86400;
	};
}
