Vagrant.configure("2") do |config|
    config.vm.box = "fedora/43-cloud-base"
    config.vm.box_url = "https://download.fedoraproject.org/pub/fedora/linux/releases/43/Cloud/x86_64/images/Fedora-Cloud-Base-Vagrant-libvirt-43-1.6.x86_64.vagrant.libvirt.box"

    config.vm.provider "libvirt" do |lv|
        lv.machine_virtual_size = 100
        lv.memory = 8192
        lv.cpus = 12
        lv.driver = "kvm"

        # Enable Virtio Video for 2D/3D acceleration support
        lv.video_type = "virtio"
        lv.video_vram = 262144 # 256MB VRAM
        lv.graphics_type = "spice"

        # very useful when having mouse issues when viewing VM via VNC
        lv.input :type => "tablet", :bus => "usb"

        # Disk mount type set to virtio, cache to writeback, and discard to unmap
        lv.disk_bus = "virtio"
        lv.disk_driver :cache => "writeback", :discard => "unmap"
    end

    config.vm.provision "shell", inline: <<-SHELL
    echo "vagrant:vagrant" | chpasswd
    sed -i 's/^#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
    systemctl restart sshd

    # --- Grow the /dev/vda4 partition and resize the btrfs filesystem ---
    # 1. Grow the partition table to utilize the 100GB virtual size
    growpart /dev/vda 4 || true

    # 2. Resize the btrfs filesystem specifically at the /var boundary
    btrfs filesystem resize max /var
    SHELL
end
