#!/bin/bash

if test -e /etc/libvirt/ && ! test -e /etc/libvirt/hooks; then
   mkdir -p /etc/libvirt/hooks
fi

# if test -e /etc/libvirt/hooks/qemu;
# then
#    cp /etc/libvirt/hooks/qemu /etc/libvirt/hooks/qemu_last_backup
# fi

#creating start scripts to win11 vm name
if test -e /etc/libvirt/hooks/qemu.d/win10/prepare/begin/start.sh && test -e /etc/libvirt/hooks/qemu.d/win10/prepare/begin/cpu_mode_performance.sh && test -e /etc/libvirt/hooks/qemu.d/win10/prepare/begin/cpu_pinning.sh; then
   mkdir -p /etc/libvirt/hooks/qemu.d/win11/prepare/begin/
   cp /etc/libvirt/hooks/qemu.d/win10/prepare/begin/start.sh /etc/libvirt/hooks/qemu.d/win11/prepare/begin/start.sh
   cp /etc/libvirt/hooks/qemu.d/win10/prepare/begin/cpu_mode_performance.sh /etc/libvirt/hooks/qemu.d/win11/prepare/begin/cpu_mode_performance.sh
   cp /etc/libvirt/hooks/qemu.d/win10/prepare/begin/cpu_pinning.sh /etc/libvirt/hooks/qemu.d/win11/prepare/begin/cpu_pinning.sh
fi
#creating stop scripts to win11 vm name
if test -e /etc/libvirt/hooks/qemu.d/win10/release/end/stop.sh && test -e /etc/libvirt/hooks/qemu.d/win10/release/end/cpu_mode_ondemand.sh && test -e /etc/libvirt/hooks/qemu.d/win10/release/end/cpu_unpinning.sh; then
   mkdir -p /etc/libvirt/hooks/qemu.d/win11/release/end/
   cp /etc/libvirt/hooks/qemu.d/win10/release/end/stop.sh /etc/libvirt/hooks/qemu.d/win11/release/end/stop.sh
   cp /etc/libvirt/hooks/qemu.d/win10/release/end/cpu_mode_ondemand.sh /etc/libvirt/hooks/qemu.d/win11/release/end/cpu_mode_ondemand.sh
   cp /etc/libvirt/hooks/qemu.d/win10/release/end/cpu_unpinning.sh /etc/libvirt/hooks/qemu.d/win11/release/end/cpu_unpinning.sh
fi

#make new path
mkdir -p /etc/libvirt/hooks/qemu.d/win10/prepare/begin/
mkdir -p /etc/libvirt/hooks/qemu.d/win10/release/end/

#copy qemu and kvm.conf file
cp hooks_folder/qemu /etc/libvirt/hooks/qemu
cp hooks_folder/kvm.conf /etc/libvirt/hooks/

#copy begin files
cp hooks_folder/start.sh /etc/libvirt/hooks/qemu.d/win10/prepare/begin/
cp hooks_folder/cpu_mode_performance.sh /etc/libvirt/hooks/qemu.d/win10/prepare/begin/
cp hooks_folder/cpu_pinning.sh /etc/libvirt/hooks/qemu.d/win10/prepare/begin/

#copy end files
cp hooks_folder/stop.sh /etc/libvirt/hooks/qemu.d/win10/release/end/
cp hooks_folder/cpu_mode_ondemand.sh /etc/libvirt/hooks/qemu.d/win10/release/end/
cp hooks_folder/cpu_unpinning.sh /etc/libvirt/hooks/qemu.d/win10/release/end/

#execute begin
chmod +x /etc/libvirt/hooks/qemu
chmod +x /etc/libvirt/hooks/qemu.d/win10/prepare/begin/start.sh
chmod +x /etc/libvirt/hooks/qemu.d/win10/prepare/begin/cpu_mode_performance.sh
chmod +x /etc/libvirt/hooks/qemu.d/win10/prepare/begin/cpu_pinning.sh

#execute end
chmod +x /etc/libvirt/hooks/qemu.d/win10/release/end/stop.sh
chmod +x /etc/libvirt/hooks/qemu.d/win10/release/end/cpu_mode_ondemand.sh
chmod +x /etc/libvirt/hooks/qemu.d/win10/release/end/cpu_unpinning.sh
