{ ... }:

{
  home.username = "silva";
  home.homeDirectory = "/home/silva";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  imports = [
    ../../modules/home/collections/cybersec.nix

    ../../modules/home/pkgs/blender.nix
    ../../modules/home/pkgs/cava.nix
    ../../modules/home/pkgs/delta.nix
    ../../modules/home/pkgs/direnv.nix
    ../../modules/home/pkgs/fastfetch.nix
    ../../modules/home/pkgs/firefox.nix
    ../../modules/home/pkgs/fish.nix
    ../../modules/home/pkgs/fonts
    ../../modules/home/pkgs/fzf.nix
    ../../modules/home/pkgs/gimp.nix
    ../../modules/home/pkgs/git.nix
    ../../modules/home/pkgs/godot.nix
    ../../modules/home/pkgs/helix.nix
    ../../modules/home/pkgs/jq.nix
    ../../modules/home/pkgs/kitty.nix
    ../../modules/home/pkgs/openvpn.nix
    ../../modules/home/pkgs/musescore.nix
    ../../modules/home/pkgs/nix_language.nix
    ../../modules/home/pkgs/starship.nix
    ../../modules/home/pkgs/tmux.nix
    ../../modules/home/pkgs/vyder.nix
    ../../modules/home/pkgs/zed.nix
    ../../modules/home/pkgs/zoxide.nix
  ];

  silvnix.git = {
    enable = true;
    fullName = "Silvan Schmidt";
    email = "mail@silvanschmidt.ch";
  };
}
