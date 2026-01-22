{ lib, config, ... }: let
mkFilesystem = share: {
	device = "//172.16.200.10/${share}";
	fsType = "cifs";
	options = [
		"credentials=/etc/nas-credentials"
		"x-systemd.automount"
		"noauto"
		"uid=1000"
		"gid=100"
		"file_mode=0755"
		"dir_mode=0755"
	];
};
in {
	options = {
		filesystems.home-nas = {
			enable = lib.mkEnableOption "enable home NAS";
			mounts-base = lib.mkOption {
				default = "/mnt/nas";
			};
		};
	};

	config = let
		mb = config.filesystems.home-nas.mounts-base;
	in lib.mkIf config.filesystems.home-nas.enable {
		fileSystems."${mb}/public" = mkFilesystem "public";
		fileSystems."${mb}/home" = mkFilesystem "home";
		fileSystems."${mb}/photos" = mkFilesystem "photos";
		fileSystems."${mb}/music" = mkFilesystem "music";
	};
}
