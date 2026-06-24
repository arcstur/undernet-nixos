{config, inputs, ...}:{
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];

  sops = {
    age.keyFile = "/etc/sops.txt";
    defaultSopsFile = ../../secrets.yaml;
  };

  environment.sessionVariables = {
    SOPS_AGE_KEY_FILE = config.sops.age.keyFile;
  };
}
