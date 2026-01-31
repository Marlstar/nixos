{ pkgs, ... }: {
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
	# List packages installed in system profile.
	# You can use https://search.nixos.org/ to find more packages (and options).
	environment.systemPackages = with pkgs; [
		vim
		neovim
		wget
		stow
		vivaldi
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
