#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c8fc909cb31afa033578f0d8ec54e4dbbaec7676; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:c0f6da8466202b74c216a547a960c7bc6952f0b1 EMMC:/dev/block/bootdevice/by-name/recovery c8fc909cb31afa033578f0d8ec54e4dbbaec7676 67108864 c0f6da8466202b74c216a547a960c7bc6952f0b1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
