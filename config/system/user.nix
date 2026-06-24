{
  mainUser,
  config,
  ...
}: {
  sops.secrets."password".neededForUsers = true;
  users.mutableUsers = false;
  users.users.${mainUser} = {
    isNormalUser = true;
    description = mainUser;
    extraGroups = ["networkmanager" "wheel"];
    packages = [];
    hashedPasswordFile = config.sops.secrets."password".path;
  };
  services.getty.autologinUser = mainUser;
}
