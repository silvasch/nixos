{ pkgs, ... }:

{
  programs.helix = {
    enable = true;
    package = pkgs.unstable.helix;
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
        end-of-line-diagnostics = "hint";
        inline-diagnostics = {
          cursor-line = "error";
        };
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
        {
          name = "nix";
          formatter = {
            command = "nixfmt";
          };
          auto-format = true;
        }
        {
          name = "lua";
          formatter = {
            command = "stylua";
            args = [ "-" ];
          };
          auto-format = true;
        }
      ];
    };
  };
}
