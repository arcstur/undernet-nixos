{pkgs, ...}:{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  console.keyMap = "br-abnt2";

  services.logind.settings.Login = {
    # Power off only by long press
    HandlePowerKeyLongPress = "poweroff";
    # Stop closed lid from hibernating
    HandleLidSwitch = "ignore";
    HandleLidSwitchDocked = "ignore";
    HandleLidSwitchExternalPower = "ignore";
    # Ignore most buttons
    HandlePowerKey = "ignore";
    HandleHibernateKey = "ignore";
    HandleHibernateKeyLongPress = "ignore";
    HandleSuspendKey = "ignore";
    HandleSuspendKeyLongPress = "ignore";
  };
}
