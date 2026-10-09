{config, ...}: let
  domain = "notify.undernet.poa.br";
  port = 6141;
in {
  services.gotify = {
    enable = true;
    environment = {
      TZ = "America/Sao_Paulo";
      GOTIFY_SERVER_PORT = "${toString port}";
      GOTIFY_LOCALAUTH_ENABLED = "false";
      GOTIFY_OIDC_ENABLED = "true";
      GOTIFY_OIDC_ISSUER = "https://id.undernet.poa.br";
      GOTIFY_OIDC_REDIRECTURL = "https://${domain}/auth/oidc/callback";
      GOTIFY_OIDC_IDP_NAME = "Undernet ID";
      GOTIFY_OIDC_SCOPES = "openid,profile,email,groups";
      GOTIFY_OIDC_GROUPS_CLAIM = "groups";
    };
    environmentFiles = [
      # client id, client secret, admin group
      config.sops.secrets.gotify.path
    ];
  };

  sops.secrets.gotify = {};

  services.cloudflared.tunnels.undernet.ingress = {
    "${domain}" = "http://127.0.0.1:${toString config.services.gotify.environment.GOTIFY_SERVER_PORT}";
  };
}
