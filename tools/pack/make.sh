
# Copy fex file
cp -fv chips/sun8iw7p1/configs/dolphin-p1/sys_config.fex out/sys_config.fex

# Copy boot0
cp -fv chips/sun8iw7p1/bin/boot0_sdcard_sun8iw7p1.bin out/boot0_sdcard.fex

# Fex file compiler requires fex file in CRLF format
unix2dos out/sys_config.fex

# Compile fex file
pctools/linux/mod_update/script out/sys_config.fex


fex2bin out/sys_config.fex out/sys_config.bin


pctools/linux/mod_update/update_boot0 out/boot0_sdcard.fex out/sys_config.bin SDMMC_CARD

