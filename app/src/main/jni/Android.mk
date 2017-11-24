LOCAL_PATH      := $(call my-dir)
TARGET_ARCH     := arm
TARGET_PLATFORM := android-14
include $(CLEAR_VARS)

LOCAL_CFLAGS += -D__linux__ -D__embedded__ -D__android__ -W -Wall

MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/*.c)


LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_C_INCLUDES       := $(LOCAL_PATH)/../../../../include

LOCAL_MODULE           := JniDemo2
LOCAL_MODULE_FILENAME  := libTest

LOCAL_LDLIBS           := -llog
LOCAL_LDLIBS           +=-L$(SYSROOT)/usr/lib -llog

LOCAL_LDFLAGS 	    += -ljnigraphics

include $(BUILD_SHARED_LIBRARY)

$(call import-module, android/support)
