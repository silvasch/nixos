{ ... }:

{
  networking.networkmanager.enable = true;
  networking.extraHosts = ''
    10.10.11.38 chemistry.htb
  '';
  networking.firewall.enable = false;
}
