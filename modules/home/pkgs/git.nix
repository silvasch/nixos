{ config, lib, ... }:

let
  cfg = config.silvnix.git;
in
{
  options.silvnix.git = {
    enable = lib.mkEnableOption "Silvnix git configuration.";

    fullName = lib.mkOption {
      type = with lib; types.nullOr types.str;
      default = null;
      description = "The full name of the user.";
    };

    email = lib.mkOption {
      type = with lib; types.nullOr types.str;
      default = null;
      description = "The email of the user.";
    };
  };

  config = lib.mkIf cfg.enable {
    programs.git = {
      enable = true;
      userName = cfg.fullName;
      userEmail = cfg.email;
    };
  };
}
