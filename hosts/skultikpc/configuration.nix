# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:

{
	imports =
	[ # Include the results of the hardware scan.
		./hardware-configuration.nix
	];

	filesystems.home-nas.enable = true;

	networking.hostName = "skultikpc"; # Define your hostname.

	services.libinput.enable = true;

	users.groups.uinput = { };

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.main.enable = true;

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
		killall
		clang
		cmake
		llvm
		lld
		gcc
		rustup
		cifs-utils
	];

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
