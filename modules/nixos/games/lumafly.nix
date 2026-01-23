{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [ lumafly ];
}
