{ ... }:

{
  networking.hostName = "surface-laptop-go";
  system.stateVersion = "24.11";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  imports = [
    ./hardware-configuration.nix

    ../../modules/nixos/audio.nix
    ../../modules/nixos/base
    ../../modules/nixos/users
    ../../modules/nixos/xfce.nix
  ];
}
