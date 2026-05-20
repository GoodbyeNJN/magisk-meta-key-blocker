#!/system/bin/sh

MODDIR=${0%/*}
KL_DIR="$MODDIR/system/usr/keylayout"
mkdir -p "$KL_DIR"

sed '/^key 125.*/s/^/# /' /system/usr/keylayout/Generic.kl >"$KL_DIR/Generic.kl"

chmod 644 "$KL_DIR/Generic.kl"
chown root:root "$KL_DIR/Generic.kl"
