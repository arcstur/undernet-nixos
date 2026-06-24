{...}: {
  # Acesss postgres's psql with `sudo -u postgres psql`
  services.postgresql = {
    enable = true;
  };

  services.postgresqlBackup = {
    enable = true;
    backupAll = true;
  };
}
