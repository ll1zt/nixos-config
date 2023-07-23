{
  description = "Ryan's NixOS Flake";



  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # home-manager，用于管理用户配置
    home-manager = {
      url = "github:nix-community/home-manager/release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    
    nixosConfigurations = {
      #     nixos-rebuild switch --flake .#nixos
      "nixos" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
	modules = [
          ./nixos/configuration.nix
           
	  home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = inputs;
	    home-manager.users.lllzt = import ./home;
          }
        ];
      };
    };
  };
}





