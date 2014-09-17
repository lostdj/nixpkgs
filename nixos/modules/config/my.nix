{ config, lib, pkgs, ... }:

with lib;

{
  options =
  {
    my =
    {
      pkgOverrides = mkOption
      {
        default = [];
        description = "";
      };
    };
  };

  config =
  {
    nixpkgs.config.packageOverrides = pkgs:
      let
        pkgMapper = { rest, pkgs }:
          if rest != [] then
            ((head rest) pkgs)
            // (pkgMapper { rest = (tail rest); pkgs = pkgs; })
          else
            {};
      in
        pkgMapper { rest = config.my.pkgOverrides; pkgs = pkgs; };
  };
}

