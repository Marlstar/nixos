{ lib, config, ... }: {
	options.cfg.hardware.stream-deck.enable = lib.mkEnableOption "enable stream deck";

	config = lib.mkIf config.cfg.hardware.stream-deck.enable {
		programs.streamcontroller.enable = true;
	};
}
