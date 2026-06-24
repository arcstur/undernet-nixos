{pkgs, ...}: {
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [bash zsh];

  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    ohMyZsh.enable = true;
  };

  programs.starship = {
    enable = true;
    settings = {
      sudo.disabled = false;
    };
  };
}
