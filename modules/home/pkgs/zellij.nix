{ ... }:

{
  programs.zellij = {
    enable = true;
    settings = {
      theme = "onedark";
      default_layout = "compact";
    };
  };

  xdg.configFile."zellij/layouts/default.kdl".source = ../../../assets/zellij/layouts/default.kdl;
}
