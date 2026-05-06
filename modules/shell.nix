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

	programs.ghostty = {
		enable = true;
		# On macOS, ensure you use the binary package
		package = pkgs.ghostty;

		settings = {
			# my quick terminal settings
			keybind = [ "global:ctrl+grave_accent=toggle_quick_terminal" ];
			"quick-terminal-position" = "top";
			"quick-terminal-size" = "30%,50%";

			"font-family" = "Source Code Pro";
			"font-family-bold" = "Source Code Pro Bold";
			"font-family-italic" = "Source Code Pro Italic";
			"font-family-bold-italic" = "Source Code Pro Bold Italic";
			"font-size" = "14";
			"window-padding-x" = "20";
			"window-padding-y" = "20";
			"window-padding-balance" = true;
			"window-height" = "20";
			"window-width" = "75";

			# Keep shell integration but disable auto-title so our zsh precmd title wins
			"shell-integration-features" = "no-title";

			# macOS specific features
			"macos-titlebar-style" = "tabs";
			"macos-option-as-alt" = true;
			"window-save-state" = "default";
			"window-vsync" = true;
			"window-colorspace" = "display-p3";
			"quick-terminal-screen" = "macos-menu-bar";
		};
  };
}
