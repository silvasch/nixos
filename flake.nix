{
  description = "My NixOS Configuration.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    vyder = {
      url = "gitlab:vyder/vyder/v0.3.4";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      home-manager,
      nixpkgs,
      nixpkgs-unstable,
      sops-nix,
      ...
    }@inputs:
    let
      system = "x86_64-linux";

      overlay-unstable = final: prev: { unstable = nixpkgs-unstable.legacyPackages.${prev.system}; };

      overlay-vyder = final: prev: { vyder = inputs.vyder.packages.${prev.system}.default; };
    in
    {
      nixosConfigurations.surface-laptop-go = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { sops-nix = sops-nix; };
        modules = [
          (
            { ... }:
            {
              nixpkgs.overlays = [ overlay-unstable overlay-vyder ];
            }
          )

          ./hosts/surface-laptop-go/configuration.nix
          ./hosts/surface-laptop-go/hardware-configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.users.silva =
              { ... }:
              {
                imports = [ ./hosts/surface-laptop-go/home.nix ];
              };
          }
        ];
      };
    };
}
