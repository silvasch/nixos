{ ... }:

{
  programs.kitty = {
    enable = true;
    settings = {
      font_family = "JetBrainsMono Nerd Font Mono";

      shell = "fish";

      tab_bar_style = "powerline";
      tab_powerline_style = "round";
      window_padding_width = 4;
    };
    keybindings = {
      "ctrl+shift+1" = "change_font_size all +2.0";
      "ctrl+minus" = "change_font_size all -2.0";
      "ctrl+0" = "change_font_size all 0";
    };
    extraConfig = ''
      include adwaita_dark.conf
    '';
  };
  xdg.configFile."kitty/adwaita_dark.conf".source = ../../../assets/kitty/adwaita_dark.conf;
}
