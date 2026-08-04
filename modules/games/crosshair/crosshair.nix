{ home, pkgs, ... }: home {
	home.packages = with pkgs; [
		wl-crosshair
	];

	programs.niri.settings.binds."Mod+KP_Multiply".action.spawn-sh = "pkill wl-crosshair || wl-crosshair ${./crosshair-3440x1440.png}";
}
