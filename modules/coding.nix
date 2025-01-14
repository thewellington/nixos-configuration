#### Installs coding tools

{ config, lib, pkgs, ... }: {
  home.packages = with pkgs; [
    # tools
    direnv
    git
    # vim
    
    #languages
    python313
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
}
