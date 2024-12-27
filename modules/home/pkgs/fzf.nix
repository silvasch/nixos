{ pkgs, ... }:

{
  programs.fzf.enable = true;

  programs.fish = {
    interactiveShellInit = ''
      fzf_configure_bindings --directory=\ck
    '';
    plugins = [
      {
        name = "fzf.fish";
        src = pkgs.fetchFromGitHub {
          owner = "PatrickF1";
          repo = "fzf.fish";
          rev = "8920367cf85eee5218cc25a11e209d46e2591e7a";
          sha256 = "sha256-T8KYLA/r/gOKvAivKRoeqIwE2pINlxFQtZJHpOy9GMM=";
        };
      }
    ];
  };
  # required for fzf.fish
  programs.fd.enable = true;
}
