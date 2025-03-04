{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware/hardware-configuration.nix
     
      ./features
      ./bundles
    ];
   
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];


  system.stateVersion = "23.05"; # dont touch
}
