# laptop.nix

{ ... }:

{
  services.xserver.synaptics = {
    enable = true;
    accelFactor = "0.06";
    dev = "/dev/input/event*";
    minSpeed = "1.8";
    maxSpeed = "2.0";
    twoFingerScroll = true;
  };
}
