{ pkgs, ... }:

{
  home.packages = with pkgs; [ metasploit ];
}
