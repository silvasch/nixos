{ ... }:

{
  programs.helix = {
    enable = true;
    settings = {
      theme = "adwaita-dark";
      editor = {
        line-number = "relative";
        true-color = true;
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        lsp.display-inlay-hints = true;
        auto-format = true;
      };
    };
    languages = {
      language-server.rust-analyzer.config.check.command = "clippy";

      language = [
        {
          name = "java";
          indent = {
            tab-width = 4;
            unit = "    ";
          };
        }
      ];
    };
  };
}
