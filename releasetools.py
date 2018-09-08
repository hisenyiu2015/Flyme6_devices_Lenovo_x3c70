import common
import edify_generator

def InstallMagisk(info):
    Magisk = info.input_zip.read("META/Magisk-v17.1.zip")
    common.ZipWriteStr(info.output_zip, "Magisk/Magisk-v17.1.zip", Magisk)

def FlashMagisk(info):
    info.script.AppendExtra(('ui_print("Flashing Magisk...");'))
    info.script.AppendExtra(('package_extract_dir("Magisk", "/tmp/Magisk");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/Magisk/Magisk-v17.1.zip", "META-INF/com/google/android/*", "-d", "/tmp/Magisk");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/Magisk/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/Magisk/Magisk-v17.1.zip");'))
    info.script.AppendExtra(('ui_print("Finish!");'))

def FullOTA_InstallEnd(info):
    InstallMagisk(info)
    FlashMagisk(info)
