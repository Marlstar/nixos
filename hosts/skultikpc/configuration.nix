# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:

{
	imports =
	[ # Include the results of the hardware scan.
		./hardware-configuration.nix
		../../modules/nixos/user/main-user.nix
	];

	networking.hostName = "SkultikPC"; # Define your hostname.

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

	fileSystems."/mnt/nas/public" = {
		device = "//172.16.200.10/public";
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
	fileSystems."/mnt/nas/home" = {
		device = "//172.16.200.10/home";
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
	fileSystems."/mnt/nas/photos" = {
		device = "//172.16.200.10/photos";
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
	fileSystems."/mnt/nas/music" = {
		device = "//172.16.200.10/music";
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

	# Enable touchpad support (enabled default in most desktopManager).
	# services.libinput.enable = true;

	users.groups.uinput = { };

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.main.enable = true;

	home-manager = {
		extraSpecialArgs = { inherit inputs; };
		users = {
			"themarlstar" = import ../../home.nix;
		};
	};

	environment.sessionVariables = {
		NIXOS_OZONE_WL = "1";
	};

	fonts.packages = with pkgs; [
		nerd-fonts.jetbrains-mono
	];
	# List packages installed in system profile.
	# You can use https://search.nixos.org/ to find more packages (and options).
	environment.systemPackages = with pkgs; [
		vim
		neovim
		wget
		kitty
		stow
		eza
		jetbrains-mono
		vivaldi
		bitwarden-desktop
		discord
		equicord
		vicinae
		killall
		clang
		cmake
		llvm
		lld
		gcc
		rustup
		cifs-utils
	];

	programs.fish.enable = true;
	programs.git.enable = true;
	programs.starship.enable = true;
	programs.zoxide.enable = true;
	programs.firefox.enable = true;
	programs.waybar.enable = true;


	# Some programs need SUID wrappers, can be configured further or are
	# started in user sessions.
	# programs.mtr.enable = true;
	programs.gnupg.agent = {
		enable = true;
		enableSSHSupport = true;
	};

	# List services that you want to enable:
	services.displayManager.sddm = {
		enable = true;
		wayland.enable = true;
		autoNumlock = true;
	};

	# Enable the OpenSSH daemon.
	services.openssh.enable = true;

	# Open ports in the firewall.
	# networking.firewall.allowedTCPPorts = [ ... ];
	# networking.firewall.allowedUDPPorts = [ ... ];
	# Or disable the firewall altogether.
	# networking.firewall.enable = false;

	# DO NOT CHANGE THIS, LIKE, EVER!!!
	system.stateVersion = "25.11";
}
