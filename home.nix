{ config, pkgs, ... }: {
  home.username = "thewellington";
  home.homeDirectory = "/home/thewellington";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
  
  # misc
  cowsay

  # utils
  gnutar
  zip
  unzip
  p7zip
  lsof
  strace
  ltrace

  # networking
  ipcalc
  dnsutils
  ldns
  # nmap
  
  # productivity
  glow
  #vim # currently installed by system config
  
  # coding
  #git

  ];

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline ];
    settings = {
      ignorecase = true;
      number = true;
    };
    extraConfig = ''
      set mouse=a
    '';
  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
}

