users.users.thewellington.isNormalUser = true;
home-manager.users.thewellington = { pkgs, ... }: {
  home.packages = [ pkgs.atool pkgs.httpie ];
  programs.bash.enable = true;
  programs.vim= {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline ];
    settings = { ignorecase = true;
		numbers = true;
    };
    extraConfig = ''
	set mouse=a
    '';
  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
};

