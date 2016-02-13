# hosts/nixos-laptop.nix

{ ... }:

{
  imports = [
    ../roles/common.nix
    ../roles/desktop.nix
    ../roles/laptop.nix
  ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "nodev";

  networking.hostName = "nixos-laptop"; # Define your hostname.
}
