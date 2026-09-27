{
  description = "game-jam devshell";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs =
    {
      nixpkgs,
      ...
    }:
    let
      systems = nixpkgs.lib.platforms.unix;
      eachSystem =
        f:
        nixpkgs.lib.genAttrs systems (
          system:
          f (
            import nixpkgs {
              inherit system;
              config = { };
              overlays = [ ];
            }
          )
        );
    in
    {
      devShells = eachSystem (pkgs: {
        default = pkgs.mkShell {
          TYPST_FONT_PATHS = "${./web/fonts}";
          packages = with pkgs; [
            typst
            typstyle
            (pkgs.writeShellScriptBin "sqlite-wrapped" ''
              ${pkgs.lib.getExe pkgs.rlwrap} ${pkgs.lib.getExe pkgs.sqlite} "$@"
            '')
            python3
          ];
          shellHook = ''
            unset SOURCE_DATE_EPOCH
          '';
        };
      });
    };
}
