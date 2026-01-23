{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
		badlion-client
		lunar-client

		(prismlauncher.override {
			additionalPrograms = [ ffmpeg ];
			jdks = [
				graalvmPackages.graalvm-ce
				zulu8
				zulu17
				zulu
			];
		})
	];
}
