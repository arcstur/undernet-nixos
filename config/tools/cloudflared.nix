{config, ...}:{
  sops.secrets.tunnel = {};
  services.cloudflared = {
    enable = true;
    tunnels.undernet = {
      default = "http_status:404";
      credentialsFile = config.sops.secrets.tunnel.path;
    };
  };
}
