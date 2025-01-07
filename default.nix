{ lib, stdenvNoCC, pkgs, ... }:
{
  boot.loader.grub = {
    splashImage = src/splash_image.png;
    theme = pkgs.stdenv.mkDerivation {
      pname = "nixos-grub";
      version = "1.0.0";
      src = ./src;
      installPhase = "cp -r . $out";
      meta = {
        description = "IDK a theme i modified to match catppuccin macchiato color scheme";
        license = lib.licenses.gpl3Only;
        platforms = lib.platforms.linux;
      };
    };
  };
}
