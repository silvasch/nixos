{ config, pkgs, ... }:

{
  networking.hostName = "surface-laptop-go";
  system.stateVersion = "24.05";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  imports = [
    ./hardware-configuration.nix

    ../../modules/nixos/audio.nix
    ../../modules/nixos/bootloader.nix
    ../../modules/nixos/locale.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/printing.nix
    ../../modules/nixos/system_packages.nix
    ../../modules/nixos/users
    ../../modules/nixos/xfce.nix
  ];
}
