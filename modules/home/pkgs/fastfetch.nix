{ ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = { source = "nixos_small"; };
      modules = [
        { type = "host"; }
        { type = "kernel"; }
        { type = "Uptime"; }
        { type = "Separator"; }
        { type = "WM"; }
        { type = "WMTheme"; }
        { type = "Terminal"; }
        { type = "TerminalTheme"; }
        { type = "Separator"; }
        { type = "CPU"; }
        { type = "GPU"; }
      ];
    };
  };

  programs.fish.functions.fish_greeting = "fastfetch";
}
