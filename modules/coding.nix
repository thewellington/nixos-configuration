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

   programs.zed-editor = {
     enable = true;
     extensions = [ "nix" "toml" "rust" "make" "python" "bash" ];
     userSettings = {
       theme = {
         mode = "system";
         dark = "One Dark";
         light = "One Light";
       };
       hour_format = "hour24";
       vim_mode = true;
     };
   };

  programs.git = {
    enable = true;
    settings.user.name = "W. S. Wellington";
    settings.user.email = "thewellington@gmail.com";
  };



}
