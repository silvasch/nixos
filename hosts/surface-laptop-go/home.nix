{ ... }:

{
  home.username = "silva";
  home.homeDirectory = "/home/silva";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  imports = [
    ../../modules/home/pkgs/direnv.nix
    ../../modules/home/pkgs/firefox.nix
    ../../modules/home/pkgs/fish.nix
    ../../modules/home/pkgs/fonts
    ../../modules/home/pkgs/gobuster.nix
    ../../modules/home/pkgs/helix.nix
    ../../modules/home/pkgs/john.nix
    ../../modules/home/pkgs/jq.nix
    ../../modules/home/pkgs/metasploit.nix
    ../../modules/home/pkgs/netcat.nix
    ../../modules/home/pkgs/nmap.nix
    ../../modules/home/pkgs/openvpn.nix
    ../../modules/home/pkgs/nix_language.nix
    ../../modules/home/pkgs/wordlists.nix
    ../../modules/home/pkgs/starship.nix
    ../../modules/home/pkgs/wireshark.nix
    ../../modules/home/pkgs/zed.nix
    ../../modules/home/pkgs/zoxide.nix
  ];
}
