{pkgs,...}:
{
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = true;
    system.autoUpgrade.channel = "https://channels.nixos.org/nixos-24.11"; #STABLE UPDATES?
}