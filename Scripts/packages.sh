#!/bin/bash
dnf install -y \
    @virtualization \
    7zip android-tools bleachbit calibre conda corectrl displaycal distrobox fastfetch fish gtk3-devel libva-utils pidgin pidgin-otr snapd tldr zsh \
    google-chrome-stable microsoft-edge-stable \
    clementine \
    gh git-lfs godot nix nix-daemon \
    prusa-slicer \
    kate kmousetool krename krusader ktimer kcron kclock dolphin-plugins ksystemlog kompare nextcloud-client-dolphin \
    buildah flatpak-builder skopeo \
    gnome-boxes 'incus-*' libguestfs libguestfs-tools-c vagrant vagrant-libvirt ansible ansible-collection-community-general 'podman*' swtpm qemu-img \
    'cockpit-*' \
    protonvpn-stable-release proton-vpn-gnome-desktop proton-vpn-cli \
    fail2ban fail2ban-firewalld fail2ban-systemd \
    zoom \
    google-noto-fonts-all google-noto-color-emoji-fonts rsms-inter-fonts

exit 0
