# marble-flashing-kit

Scripts to flash firmware and custom ROMs on Poco F5 / Redmi Note 12 Turbo (marble).
Works on Windows, macOS, and Linux.

## Steps

1. Download your ROM's fastboot package and copy it to `mac-linux/` (or `windows/`), rename to `rom.zip`
2. Download firmware for your variant from [xiaomifirmwareupdater.com](https://xiaomifirmwareupdater.com/firmware/marble/) and copy it as `firmware.zip`
3. (Windows only) Right-click `windows/install_drivers.cmd` → Run as administrator
4. Reboot to bootloader:
   ```
   adb reboot bootloader
   ```
   Or power off, then hold **Volume Down + Power**
5. ```
   cd mac-linux
   ./flash_firmware_fastboot.sh
   ./flash_rom_fastboot.sh
   ```

## Notes

- `.cmd` scripts are for Windows (right-click → Run as administrator)
- `.sh` scripts are for macOS/Linux
- Warnings about `avb footer` during firmware flash are normal, ignore them
- Device will reboot into fastbootd automatically during ROM flash — this is expected
- These scripts **do not** wipe data (select clean flash if you want a wipe)
