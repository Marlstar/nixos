{ pkgs, inputs, ... }: {
	programs.steam = {
		enable = true;
		remotePlay.openFirewall = true;
		localNetworkGameTransfers.openFirewall = true;

		gamescopeSession.enable = true;

		extraPackages = with pkgs; [
			jdk # java dep
		];
	};

	# For appimage-formatted native linux builds of games
	programs.appimage.binfmt = true;

	programs.java.enable = true; # java dep

	environment.systemPackages = with pkgs; [
		protonup-rs
	];

	# <== Millennium ==>
	nixpkgs.overlays = [ inputs.millennium.overlays.default ];
	programs.steam.package = pkgs.millennium-steam;
}
