{inputs, config, pkgs,...}:
{
  environment.systemPackages = with pkgs;[
    rustc
    cargo
    gcc
    python3
    git
  ];

}