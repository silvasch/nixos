{ pkgs, ... }:

{
  home.packages = with pkgs; [ netcat-gnu ];
}
