# Keyboard Meta Key Blocker

A system-level module that blocks the Meta (Win/Cmd) key keyboard input, supporting both Magisk and KernelSU.

## Supported Platforms

- **Magisk**
- **KernelSU**

## Download

Get the [latest release](../../releases/latest).

## 🔧 How It Works

The module implements its functionality by modifying the following file:

```
/system/usr/keylayout/Generic.kl
```

The principle is to change the `KEY_LEFTMETA` key mapping in the standard generic keyboard layout file to `UNKNOWN`, causing the system to completely ignore this input.

## 🐛 Troubleshooting

### Meta Key Still Works

Run the following command to check if the module is loaded correctly:

```bash
adb shell su -c "cat /system/usr/keylayout/Generic.kl | grep 'key 125'"
```

**Expected output** should include:

```
# key 125   META_LEFT
key 125   UNKNOWN
```

**If the output doesn't match:**

- The module hasn't loaded properly
- Uninstall the module and reboot your device
- Reinstall the module
- Reboot again

### ⚠️ Important Notes

- This module **only** affects the Meta key and does not affect other keys
- Keyboard shortcuts that depend on the Meta key will not work
- Some applications may expect the Meta key to exist, but will function normally
