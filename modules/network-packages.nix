{ config, lib, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    wget
    curl
    dig
    nmap
  ];
}
