{ ... }: {
	# rebuilding the man cache every time config changes is awfully slow
	documentation.man.generateCaches = false;
}
