{
  lib,
  stdenvNoCC,
}:
let
  version = "1.0.0";
in
  # boot.loader.grub.splashImage = src/splash_image.png;
  stdenvNoCC.mkDerivation {
    pname = "nixos-grub";
    inherit version;
    src = ./src;
    installPhase = "cp -r . $out";
    meta = {
      description = "IDK a theme i modified to match catppuccin macchiato color scheme";
      license = lib.licenses.gpl3Only;
      platforms = lib.platforms.linux;
    };
  }
