#!/bin/bash
dnf install -y \
    @virtualization \
    7zip android-tools bleachbit calibre conda corectrl displaycal distrobox fastfetch fish gtk3-devel libva-utils pidgin pidgin-otr snapd tldr zsh \
    google-chrome-stable microsoft-edge-stable \
    clementine \
    gh git-lfs godot nix nix-daemon \
    prusa-slicer \
    kate kdegraphics-thumbnailers 'kio*' kmousetool krename krdc krusader ktimer kcron kclock dolphin-plugins ksystemlog kompare nextcloud-client-dolphin \
    buildah flatpak-builder skopeo \
    ansible ansible-collection-community-general gnome-boxes nbdkit 'incus-*' 'libguestfs*'  'podman*' swtpm qemu-img \
    'cockpit-*' \
    protonvpn-stable-release proton-vpn-gnome-desktop proton-vpn-cli \
    fail2ban fail2ban-firewalld fail2ban-systemd \
    zoom \
    google-noto-fonts-all google-noto-color-emoji-fonts rsms-inter-fonts \
    boundary packer terraform vagrant vagrant-libvirt vagrant-cachier vagrant-sshfs vagrant-hostmanager vagrant-registration waypoint #hashicorp \
    ffmpegthumbnailer #dolphin thumbnails
exit 0
