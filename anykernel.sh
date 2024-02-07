# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

properties() { '
kernel.name=mikasa
maintainer.name=Noophyy (@noophyy)
do.devicecheck=1
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=RMX1805
device.name2=RMX1809
device.name3=RMX1811
supported.versions=9 - 14.1
'; }

block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;
no_block_display=1;

. tools/ak3-core.sh;

split_boot;

flash_boot;
flash_dtbo;