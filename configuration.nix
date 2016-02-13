# configuration.nix

{ config, pkgs, ... }:

{
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./active-host.nix
  ];

  nixpkgs.config.allowUnfree = true;
}
