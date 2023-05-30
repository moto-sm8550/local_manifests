source build/envsetup.sh

# from LineageOS Gerrit Code Review topic 13-kalama
# https://review.lineageos.org/q/topic:%2213-kalama%22

# android_vendor_lineage
repopick 355196 # qcom: Add support for kalama platform
repopick 356573 # Hookup GRALLOC_HANDLE_HAS_CUSTOM_CONTENT_MD_RESERVED_SIZE
repopick 356575 # qcom: Use full QTI gralloc struct for GKI 2.0 targets

# android_vendor_qcom_opensource_dataservices
repopick 356572 # rmnetctl: Remove rmnet_data.h header include

# android_vendor_qcom_opensource_display-commonsys-intf
repopick 356811 # Hookup GRALLOC_HANDLE_HAS_CUSTOM_CONTENT_MD_RESERVED_SIZE

# android_vendor_qcom_opensource_power
repopick 356755 # Power:Update android.hardware.power AIDL interface
repopick 356757 # Power : Modify camera open/close tunings
repopick 356760 # Add 120/240 FPS UCs power hint tuning parameter
repopick 356758 # Power: ZSL preview Silver capped from 729MHz to 825MHz
repopick 356759 # Optimization silver core residency for camcorder UCs
