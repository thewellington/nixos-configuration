users.users.thewellington.isNormalUser = true;
home-manager.users.thewellington = { config, pkgs, ... }: {
  home.packages = [ pkgs.atool pkgs.httpie pkgs.vim ];

  programs.bash.enable = true;

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline ];
    settings = { 
	ignorecase = true;
	number = true;
	tabstop = 2;
    };
    extraConfig = ''
	set mouse=a
    '';
    vimrcConfig = {
      customRC = ''
        set numbers
      '';
    };

  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
};

