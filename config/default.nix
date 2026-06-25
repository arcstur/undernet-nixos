{...}: {
  imports = [
    ./system/hardware-configuration.nix
    ./system/hardware-other.nix
    ./system/network.nix
    ./system/user.nix
    ./system/meta.nix
    ./system/sops.nix
    ./system/cleaning.nix
    ./system/locale.nix
    ./system/ssh.nix
    ./system/shell.nix
    ./system/utils.nix
    ./system/gpu.nix
    ./tools/database.nix
    ./tools/cloudflared.nix
  ];
}
