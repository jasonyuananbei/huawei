LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_HAVE_BLUETOOTH_RTK_AUTOPAIR),true)
# libbt-rtk_autopair.a
include $(CLEAR_VARS)

LOCAL_SRC_FILES := autopair/rtk_autopair.c

LOCAL_C_INCLUDES := $(rtk_local_C_INCLUDES)

LOCAL_CFLAGS += $(rtk_local_CFLAGS)

LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_MODULE := libbt-rtk_autopair

include $(BUILD_STATIC_LIBRARY)
endif

