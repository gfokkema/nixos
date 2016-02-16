# hosts/nixos-laptop.nix

{ pkgs, ... }:

{
  imports = [
    ../roles/common.nix
    ../roles/desktop.nix
    ../roles/laptop.nix
  ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "nodev";
    os-prober.enable = true;
  };

  networking.hostName = "nixos-laptop"; # Define your hostname.

  environment.systemPackages = with pkgs; [ os-prober-grub ];
}
