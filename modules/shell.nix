#### manages shell

{ config, lib, pkgs, ... }: {
  home.packages = with pkgs; [liquidprompt ];

  programs.bash = {
    enable = true;
    bashrcExtra = ''
      ## .bashrc - managed by home-manager
      #
     
      # add liquidprompt
      source ~/.nix-profile/bin/liquidprompt
    '';
  };

}
