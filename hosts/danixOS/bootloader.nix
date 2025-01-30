#bootloader
{inputs, pkgs, ...}: 

{
  #boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  #boot.loader.systemd-boot.configurationLimit = 10;

  boot.loader = {
        grub = {
            enable                = true;
            version               = 2;     
            useOSProber           = true;
            copyKernels           = true;
            #efiInstallAsRemovable = true; DO NOT USE IN THIS CASE
            efiSupport            = true;
            fsIdentifier          = "label";
            devices               = [ "nodev" ]; #UEFI : if exist dir "/sys/firmware/efi"  put = "nodev" 
            extraEntries = ''
                menuentry "Reboot" {
                    reboot
                }
                menuentry "Poweroff" {
                    halt
                }
            '';
        };
    };
}