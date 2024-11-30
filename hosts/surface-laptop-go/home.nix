{ ... }:

{
  home.username = "silva";
  home.homeDirectory = "/home/silva";
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;

  imports = [
    ../../modules/home/direnv.nix
    ../../modules/home/firefox.nix
    ../../modules/home/fish.nix
    ../../modules/home/helix.nix
    ../../modules/home/starship.nix
    ../../modules/home/zoxide.nix
  ];
}
