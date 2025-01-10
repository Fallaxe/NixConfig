#bootloader
{inputs, pkgs, ...}: 

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 10;

#   boot.loader = {
#         grub = {
#             enable                = true;
#             useOSProber           = true;
#             copyKernels           = true;
#             efiInstallAsRemovable = true;
#             efiSupport            = true;
#             fsIdentifier          = "label";
#             devices               = [ "/boot" ];
#             extraEntries = ''
#                 menuentry "Reboot" {
#                     reboot
#                 }
#                 menuentry "Poweroff" {
#                     halt
#                 }
#             '';
#         };
#     };
}