{
  description = "My NixOS Configuration.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { home-manager, nixpkgs, ... }: 
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.surface-laptop-go = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/surface-laptop-go/configuration.nix
          ./hosts/surface-laptop-go/hardware-configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.users.silva = { ... }: {
              imports = [
                ./hosts/surface-laptop-go/home.nix
              ];
            };
          }
        ];
      };
    };
}
