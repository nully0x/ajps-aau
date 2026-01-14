{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    bacon
    sqlite
    pkg-config
  ];

  shellHook = ''
    echo 'Welcome to devbox!' > /dev/null
  '';
}
