{ inputs, ... }: {
	stylix.enable = true;
	stylix.polarity = "dark";
	stylix.base16Scheme = "${inputs.tinted-schemes}/base16/catppuccin-mocha.yaml";
}
