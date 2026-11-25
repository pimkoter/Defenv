{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:
{
  env.DEVENV = "TRUE";
  enterShell = ''
    if [[ $- == *i* && -z "''${__pim_rc:-}" ]]; then
      __pim_rc=1
      source ${inputs.pimPkgs.packages.${pkgs.stdenv.system}.bash}/bin/bash
    fi
  '';
}
