ifneq ($ROM_VERSION_TAG,"")
        VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)$(ROM_VERSION_MAINTENANCE)-$(ROM_VERSION_TAG)
else
        VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)$(ROM_VERSION_MAINTENANCE)
endif

export ROM_VERSION := $(VERSION)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.$(VENDOR).version=$(VERSION)

# goo.im properties
PRODUCT_PROPERTY_OVERRIDES += \
      ro.goo.developerid=Kayant\
      ro.goo.rom=paranoidandroid \
      ro.goo.version=$(shell date +%s)

