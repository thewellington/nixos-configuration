# nixos-configuration

`./flake.nix` is the entry point for this Flake.

Home Manager is integrated into the NixOS configuration via `home-manager.nixosModules.home-manager`, so a single rebuild applies both system and user configuration.

Running `sudo nixos-rebuild switch --flake .#pinkie-pie` will apply the current system and home-manager config.

Upgrading Nixos
1. `sudo nix flake update`
2. `sudo nixos-rebuild boot --flake .#pinkie-pie`




## TODO
- Install Powerline Fonts for vim-airline to take advantage of
- Figure out where .vimrc is getting written to
- set up vim to provide a folder listing
- setup NordVPN
- figure out what we need to do to use this same config on other systems - allowing us to use the `configuration.nix` and `hardware-configuration.nix` files from from those systems
- ~~install SourceCode Pro Font~~
