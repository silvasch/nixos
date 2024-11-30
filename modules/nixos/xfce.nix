{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    desktopManager.xfce.enable = true;
    xkb = {
      layout = "ch";
      variant = "";
    };
  };

  environment.systemPackages = with pkgs; [ papirus-icon-theme xfce.thunar-archive-plugin ];
}
