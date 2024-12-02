{ pkgs, sops-nix, ... }:

{
  imports = [ sops-nix.nixosModules.sops ];

  sops.defaultSopsFile = ../../secrets.yaml;
  sops.defaultSopsFormat = "yaml";
  sops.age.keyFile = "/home/silva/.config/sops/age/keys.txt";

  sops.secrets."anthropic/zed" = { owner = "silva"; };

  environment.systemPackages = with pkgs; [ age sops ];
}
