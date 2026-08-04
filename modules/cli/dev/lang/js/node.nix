{ home, pkgs, ... }: home {
	home.packages = with pkgs; [
		nodejs
		typescript
	];

	programs.bun = {
		enable = true;
	};
}
