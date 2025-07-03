#!/usr/bin/env bash

pkgs=(
  htop
  btop
  gdu
  powertop

  glances
  duf
  smartmontools
  dmidecode
  inxi
)

setup() {
  cfgs=(
    btop
    htop
  )

  for cfg in "${cfgs[@]}"; do
    cp -r "../config/${cfg}/" ~/.config/
  done
}

. ./_pkg.sh

setup
