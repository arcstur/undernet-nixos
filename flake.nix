{
  description = "Undernet Porto Alegre";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs, ...} @ inputs: {
    nixosConfigurations.Undernet = nixpkgs.lib.nixosSystem {
      modules = [./config];
      specialArgs = {
        inherit inputs;
        mainUser = "undernet";
      };
    };
  };
}
