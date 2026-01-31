# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:

{
	imports = [ ./hardware-configuration.nix ];

	# <== Already modularised ==>
	cfg = {
		hardware = {
			nvidia.enable = true;
		};

		users.main.enable = true;

		filesystems = {
			home-nas.enable = true;
		};
	};
	
	# <== To-be-modularised/organised ==>
	services.libinput.enable = true;

	users.groups.uinput = { };

	# Define a user account. Don't forget to set a password with ‘passwd’.

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
		jetbrains-mono
		vivaldi
		bitwarden-desktop
		killall
		clang
		cmake
		llvm
		lld
		gcc
		rustup
		cifs-utils
	];

	# Open ports in the firewall.
	# networking.firewall.allowedTCPPorts = [ ... ];
	# networking.firewall.allowedUDPPorts = [ ... ];
	# Or disable the firewall altogether.
	# networking.firewall.enable = false;

	# DO NOT CHANGE THIS, LIKE, EVER!!!
	system.stateVersion = "25.11";
}
