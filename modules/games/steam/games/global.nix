{ home, ... }: home {
	programs.steam.config = {
		enable = true;
		onSteamRunning = "close";
		defaultCompatTool = "GE-Proton";
	};
}
