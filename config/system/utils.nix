{pkgs, ...}:{
  environment.systemPackages = with pkgs; [
    ripgrep
    fd
    fzf
    jq
    bat
    btop
    bottom
    sd
    bind
    dua

    vim
    helix
  ];
}
