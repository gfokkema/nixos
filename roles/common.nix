# common-configuration.nix

{ pkgs, ... }:

let
  vim = import ../pkgs/vim.nix { pkgs = pkgs; };
in
{
  system.stateVersion = "15.09";

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
    dstat
    git
    nix-repl
    tmux
    tree
    vim
  ];
}
