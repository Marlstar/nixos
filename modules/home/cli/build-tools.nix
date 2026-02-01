{ pkgs, ... }: {
	home.packages = with pkgs; [
		# Compilers
		gcc
		llvm

		# Build systems
		cmake

		# Linkers
		lld
	];
}
