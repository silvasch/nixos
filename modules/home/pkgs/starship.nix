{ lib, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      format = lib.concatStrings [
        "$battery"
        "$directory"
        "$character"
      ];

      right_format = lib.concatStrings [
        "$git_branch"
        "$git_status"
      ];

      character = {
        success_symbol = "[~>](bold green)";
        error_symbol = "[~>](bold red)";
      };
    };
  };

  programs.fish = { interactiveShellInit = "starship init fish | source"; };
}

