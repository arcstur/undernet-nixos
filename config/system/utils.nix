{pkgs, ...}:{
  environment.systemPackages = with pkgs; [
    ripgrep
    fd
    fzf
    jq
    bat
    sd
    dua
    bind

    vim
    helix

    git

    fastfetch
    btop
    bottom
  ];
}
