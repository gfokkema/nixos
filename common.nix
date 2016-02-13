# common-configuration.nix

{ config, pkgs, ... }:

{
  imports = [];

  system.stateVersion = "15.09";

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "nodev";

  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  time.timeZone = "Europe/Amsterdam";
  security.sudo.wheelNeedsPassword = false;

  networking.firewall = {
    enable = true;
    allowPing = true;
    allowedTCPPorts = [ 22 ];
  };

  programs.bash.enableCompletion = true;
  services.openssh.enable = true;

  users.extraUsers.gerlof = {
    isNormalUser = true;
    uid = 1000;
    extraGroups = [ "wheel" ];
  };

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    git
    nix-repl
    tmux
    (
      pkgs.vim_configurable.customize {
        name = "vi";
        vimrcConfig.customRC = (import ./vimrc.nix {});
      }
    )
  ];
}
