{ ... }:

{
  home.username = "silva";
  home.homeDirectory = "/home/silva";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  imports = [
    ../../modules/home/direnv.nix
    ../../modules/home/firefox.nix
    ../../modules/home/fish.nix
    ../../modules/home/fonts
    ../../modules/home/helix.nix
    ../../modules/home/openvpn.nix
    ../../modules/home/nix_language.nix
    ../../modules/home/starship.nix
    ../../modules/home/zed.nix
    ../../modules/home/zoxide.nix
  ];
}
