{ ... }:

{
  programs.zoxide.enable = true;

  programs.fish.interactiveShellInit = ''
    zoxide init fish --cmd cd | source
  '';
}
