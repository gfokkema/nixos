# laptop.nix

{ ... }:

{
  services.xserver.synaptics = {
    enable = true;
    twoFingerScroll = true;
    minSpeed = "1.5";
    maxSpeed = "1.6";
    #accelFactor = "0.01";
  };
}
