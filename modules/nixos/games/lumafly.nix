{ pkgs, lib, config, ... }: {
	options = {
		cfg.games.lumafly.enable = lib.mkOption {
			default = config.cfg.games.steam.enable;
		};
	};

	config = lib.mkIf config.cfg.games.lumafly.enable {
		environment.systemPackages = with pkgs; [ lumafly ];
	};
}
