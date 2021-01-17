with import ./arion-pkgs.nix;

mkShell {
  buildInputs = [
    nodejs
    postgresql
    redis
    (writeShellScriptBin "dbmate" ''
      ${dbmate}/bin/dbmate $@ && zapatos
    '')
  ];
}
