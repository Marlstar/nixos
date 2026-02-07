{ pkgs, ... }: let
equicord-upd = (pkgs.equicord.overrideAttrs (oldAttrs: {
	version = "2026-01-25";
	src = pkgs.fetchFromGitHub {
		owner = "Equicord";
		repo = "Equicord";
		tag = "2026-01-25";
		hash = "sha256-v1WVQJrCfxzQR388RE4G1nJTAEW1ltmLnlFOjdyfIvY=";
	};
}));
in {
	programs.discord = {
		enable = true;
		settings = {
			SKIP_HOST_UPDATE = true;
		};
		package = (pkgs.discord.override {
			withEquicord = true;
			equicord = equicord-upd;
			withOpenASAR = true;
			disableUpdates = false; # home-manager does this
		});
	};

	home.packages = [
		equicord-upd
	];
}
