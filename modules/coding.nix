#### Installs coding tools

{ config, lib, pkgs, ... }: {
  home.packages = with pkgs; [
    # tools
    direnv
    
    #languages
    python313
    python313Packages.pip
  ];

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline ];
    settings = {
      ignorecase = true;
      number = true;
    };
    extraConfig = ''
     set mouse-=a
    ''; 
  };

  programs.git = {
    enable = true;
    settings.user.name = "W. S. Wellington";
    settings.user.email = "thewellington@gmail.com";
  };

}
