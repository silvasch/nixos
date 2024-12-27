{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    helix
    git
    just
  ];
  environment.sessionVariables = {
    EDITOR = "hx";
  };
}
