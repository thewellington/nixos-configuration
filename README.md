# nixos-configuration

`./flake.nix` is the entry point for this Flake.   

Running `sudo nixos-rebuild switch --flake .` will apply the current config to the system

Running `home-manager switch --flake .` will apply the home-manager config to the current user

## TODO
- Install Powerline Fonts for vim-airline to take advantage of
- Figure out where .vimrc is getting written to
- set up vim to provide a folder listing
- setup NordVPN
- figure out what we need to do to use this same config on other systems - allowing us to use the `configuration.nix` and `hardware-configuration.nix` files from from those systems
install SourceCode Pro Font
