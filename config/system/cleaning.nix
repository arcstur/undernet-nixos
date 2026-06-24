{...}: {
  # nix-collect-garbage
  nix.gc = {
    automatic = true;
    options = "--delete-older-than 14d";
  };

  # nix store optimise
  nix.settings.auto-optimise-store = true;

  # clear /tmp
  boot.tmp.cleanOnBoot = true;
}
