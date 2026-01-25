{ pkgs, ... }: let
sweet-cursor-hyprcursor = pkgs.stdenv.mkDerivation {
	pname = "sweet-cursor-hyprcursor";
	version = "unstable";

	src = pkgs.fetchFromGitHub {
		owner = "Marlstar";
		repo = "sweet-cursor-hyprcursor";
		rev = "b7b995c58a7600a633b4f6f8e6dfda9e19b104e4";
		sha256 = "sha256-flC7xmIlCo4GTPzOll71hDTU3aoLX7Zw+bnfg8iWCNo=";
	};

	installPhase = ''
	runHook preInstall
	mkdir -p $out/share/icons/sweet-cursor-hyprcursor
	cp -r * $out/share/icons/sweet-cursor-hyprcursor
	runHook postInstall
	'';
};
in {
	home.packages = with pkgs; [
		hyprcursor
		sweet-cursor-hyprcursor
	];

	home.pointerCursor = {
		name = "sweet-cursor-hyprcursor";
		package = sweet-cursor-hyprcursor;
		size = 24;
		hyprcursor.enable = true;
	};
}
