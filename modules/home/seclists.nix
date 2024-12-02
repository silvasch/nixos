{ pkgs, ... }:

{
  home.packages = with pkgs; [ seclists ];
}
