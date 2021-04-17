def FullOTA_InstallEnd(info):
    info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/platform/bootdevice/by-name/system", "/system_root");')
    info.script.AppendExtra('unmount("/system_root");') 
