#

# MT76x8 Profiles

#



define Device/tplink

  TPLINK_FLASHLAYOUT :=

  TPLINK_HWID :=

  TPLINK_HWREV :=

  TPLINK_HWREVADD :=

  TPLINK_HVERSION :=

  KERNEL := $(KERNEL_DTB)

  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v2-header -e

  IMAGES += tftp-recovery.bin

  IMAGE/factory.bin := tplink-v2-image -e

  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)

  IMAGE/sysupgrade.bin := tplink-v2-image -s -e | append-metadata | \

        check-size $$$$(IMAGE_SIZE)

endef

DEVICE_VARS += TPLINK_FLASHLAYOUT TPLINK_HWID TPLINK_HWREV TPLINK_HWREVADD TPLINK_HVERSION





define Device/alfa-network_awusfree1

  DTS := AWUSFREE1

  IMAGE_SIZE := $(ralink_default_fw_size_8M)

  DEVICE_TITLE := ALFA Network AWUSFREE1

  DEVICE_PACKAGES := uboot-envtools

endef

TARGET_DEVICES += alfa-network_awusfree1



define Device/tama_w06

  DTS := W06

  IMAGE_SIZE := 15040k

  DEVICE_TITLE := Tama W06

  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci

endef

TARGET_DEVICES += tama_w06



define Device/duzun-dm06

  DTS := DUZUN-DM06

  DEVICE_TITLE := DuZun DM06

  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport

endef

TARGET_DEVICES += duzun-dm06



define Device/gl-mt300n-v2

  DTS := GL-MT300N-V2

  IMAGE_SIZE := 16064k

  DEVICE_TITLE := GL-iNet GL-MT300N-V2

  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci

endef

TARGET_DEVICES += gl-mt300n-v2



define Device/hc5661a

  DTS := HC5661A

  IMAGE_SIZE := $(ralink_default_fw_size_16M)

  DEVICE_TITLE := HiWiFi HC5661A

endef

TARGET_DEVICES += hc5661a



define Device/LinkIt7688

