{ inputs, pkgs, ... }: {
	stylix.enable = true;
	stylix.polarity = "dark";
	stylix.base16Scheme = "${inputs.tinted-schemes}/base16/catppuccin-mocha.yaml";
	stylix.fonts = {
		monospace = {
			name = "JetBrains Mono Nerd Font";
			package = pkgs.nerd-fonts.jetbrains-mono;
		};
	};
	stylix.fonts.sizes = {
		terminal = 14;
	};
}
