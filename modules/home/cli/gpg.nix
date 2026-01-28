{ ... }: {
	programs.gpg = {
		enable = true;
	};

	services.gpg-agent = {
		enable = true;

		defaultCacheTtl = 86400;
		maxCacheTtl = 86400;
		defaultCacheTtlSsh = 86400;
		maxCacheTtlSsh = 86400;
	};
}
