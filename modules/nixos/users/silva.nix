{ ... }:

{
  users.users.silva = {
    isNormalUser = true;
    description = "Silvan Schmidt";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
