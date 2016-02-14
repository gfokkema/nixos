# desktop.nix

{ pkgs, ... }:

{
  services.redshift = {
    enable = true;
    latitude = "52";
    longitude = "4";
  };

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    layout = "us";
    xkbOptions = "eurosign:e";
    displayManager.gdm.enable = true;
    desktopManager.gnome3.enable = true;
  };

  environment.systemPackages = with pkgs; [
    chromium
    mplayer
    #telegram-desktop
  ];
}
