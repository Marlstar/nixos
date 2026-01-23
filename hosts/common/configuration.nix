{ config, pkgs, inputs, ... }:
{
	nix = {
		settings = {
			experimental-features = [ "nix-command" "flakes" ];
			auto-optimise-store = true;
			download-buffer-size = 524288000; # Fixes the "download buffer full" warning


			# Hyprland cachix
			substituters = ["https://hyprland.cachix.org"];
			trusted-substituters = ["https://hyprland.cachix.org"];
			trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
		};
		gc = {
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 28d";
		};
	};

	# Use the systemd-boot EFI boot loader.
	boot.loader = {
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
		timeout = 0;
	};

	# Use latest kernel.
	boot.kernelPackages = pkgs.linuxPackages_latest;
	boot.kernelModules = [ "uinput" ];

	# Configure network connections interactively with nmcli or nmtui.
	networking.networkmanager.enable = true;

	# Set your time zone.
	time.timeZone = "Australia/Brisbane";

	nixpkgs.config.allowUnfree = true;

	# Configure network proxy if necessary
	# networking.proxy.default = "http://user:password@proxy:port/";
	# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

	# Select internationalisation properties.
	i18n.defaultLocale = "en_AU.UTF-8";
	console = {
		#   font = "Lat2-Terminus16";
		#   keyMap = "us";
		useXkbConfig = true; # use xkb.options in tty.
	};

	hardware = {
		uinput.enable = true;
		graphics = {
			enable = true;
			enable32Bit = true;
		};
		nvidia = {
			modesetting.enable = true;
			powerManagement.enable = false;
			open = true;
			nvidiaSettings = true;
			package = config.boot.kernelPackages.nvidiaPackages.stable;
		};
	};

	services.xserver.videoDrivers = ["nvidia"];

	# Enable CUPS to print documents.
	services.printing.enable = true;

	services.pipewire = {
		enable = true;
		pulse.enable = true;
	};

	security.sudo.enable = false;
	security.sudo-rs.enable = true;
	security.sudo-rs.wheelNeedsPassword = false;

}
