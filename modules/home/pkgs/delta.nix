{ ... }:

{
  programs.git.delta = { enable = true; };

  programs.fish.interactiveShellInit = "alias diff delta";

  programs.git.extraConfig = { delta = { side-by-side = true; }; };
}

