# hosts/nixos-laptop.nix

{ ... }:

{
  imports = [
    ../roles/common.nix
    ../roles/desktop.nix
  ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "nixos-virtual"; # Define your hostname.
}
