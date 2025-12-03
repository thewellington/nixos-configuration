{ config, lib, pkgs, ... }: {

  home.packages = with pkgs; [
    wget
    curl
    nmap
    ipcalc
    dnsutils
    ldns
  ];
}
