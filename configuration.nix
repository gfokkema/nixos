# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

# This configuration file simply determines the hostname before importing most
# of the actual configuration from ./configuration-common.nix. This is done so
# that the same configuration files can be used with both conventionally
# installed NixOS (see nixos-install) and NixOS installed by Nixops.

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./common.nix
      ./desktop.nix
      ./laptop.nix
    ];

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
}
