{ ... }:

{
  programs.git = {
    enable = true;
    extraConfig = {
      user.name = "Silvan Schmidt";
      user.email = "mail@silvanschmidt.ch";

      init.defaultBranch = "main";
    };
  };
}
