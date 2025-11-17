{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { nixpkgs, ... } @ inputs: {
    nixosConfigurations.lilleservern = nixpkgs.lib.nixosSystem {
      system = "X86_64-linux";
      modules = [
        ./configuration.nix
      ];
    };
  };
}

