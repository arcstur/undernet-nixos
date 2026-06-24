{mainUser, ...}: {
  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
  };

  users.users.${mainUser}.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOZl10n3l7T6Vm5jP0OFqKqzZvD9dc4av+DpZWVTTDZk arcstur"
  ];
}
