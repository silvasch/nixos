{
  description = "My NixOS Configuration.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
  };

  outputs = {nixpkgs, ...}: 
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.surface-laptop-go = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/surface-laptop-go/configuration.nix
          ./hosts/surface-laptop-go/hardware-configuration.nix
        ];
      };
    };
}
