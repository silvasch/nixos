{ pkgs, ... }:

{
  home = {
    packages = with pkgs; [ zed-editor ];
    sessionVariables.ANTHROPIC_API_KEY = builtins.readFile "/run/secrets/anthropic/zed";
  };
}
