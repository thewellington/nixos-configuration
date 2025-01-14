{ config, lib, pkgs, ... }: {

  home.packages = with pkgs; [
    wget
    curl
    dig
    nmap
    ipcalc
    dnsutils
    ldns
  ];
}
