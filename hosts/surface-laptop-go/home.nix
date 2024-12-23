{ ... }:

{
  home.username = "silva";
  home.homeDirectory = "/home/silva";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  imports = [
    ../../modules/home/collections/cybersec.nix
  
    ../../modules/home/pkgs/blender.nix
    ../../modules/home/pkgs/direnv.nix
    ../../modules/home/pkgs/firefox.nix
    ../../modules/home/pkgs/fish.nix
    ../../modules/home/pkgs/fonts
    ../../modules/home/pkgs/godot.nix
    ../../modules/home/pkgs/helix.nix
    ../../modules/home/pkgs/jq.nix
    ../../modules/home/pkgs/openvpn.nix
    ../../modules/home/pkgs/nix_language.nix
    ../../modules/home/pkgs/musescore.nix
    ../../modules/home/pkgs/starship.nix
    ../../modules/home/pkgs/vyder.nix
    ../../modules/home/pkgs/zed.nix
    ../../modules/home/pkgs/zoxide.nix
  ];
}
