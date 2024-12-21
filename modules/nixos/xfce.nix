{ pkgs, ... }:

{
  imports = [
    ./audio.nix
    ./bluetooth.nix
  ];

  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    desktopManager.xfce.enable = true;
    xkb = {
      layout = "ch";
      variant = "";
    };
  };

  environment.systemPackages = with pkgs; [
    blueman
    papirus-icon-theme
    xfce.thunar-archive-plugin
    mate.atril
    xarchiver
  ];
}
