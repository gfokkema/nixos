# desktop.nix

{ config, pkgs, stdenv, ... }:

{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    layout = "us";
    xkbOptions = "eurosign:e";
    desktopManager.gnome3.enable = true;
    displayManager.lightdm.enable = true;
  };

  environment.systemPackages = with pkgs; [
    chromium
  ];
}
