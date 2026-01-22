{ lib, ... }:
let
    # Recursively import all .nix files in a directory
    importAllNix =
        dir:
        let
            entries = builtins.readDir dir;

            # Get all .nix files (except default.nix)
            nixFiles = lib.filterAttrs (
                name: type: type == "regular" && lib.hasSuffix ".nix" name && name != "default.nix"
            ) entries;

            # Get all subdirectories
            dirs = lib.filterAttrs (name: type: type == "directory") entries;

            # Import paths for .nix files
            filePaths = map (name: dir + "/${name}") (lib.attrNames nixFiles);

            # Recursively get imports from subdirectories
            dirPaths = lib.concatMap (name: importAllNix (dir + "/${name}")) (lib.attrNames dirs);
        in
        filePaths ++ dirPaths;
in {
	imports = importAllNix ./.;
}
