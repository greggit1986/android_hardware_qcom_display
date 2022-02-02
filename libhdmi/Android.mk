LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := libhdmi
LOCAL_MODULE_TAGS             := optional
LOCAL_VENDOR_MODULE           := true
LOCAL_SHARED_LIBRARIES        := $(common_libs) liboverlay libqdutils libEGL
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"qdhdmi\"
LOCAL_HEADER_LIBRARIES        := display_headers generated_kernel_headers
LOCAL_SRC_FILES               := hdmi.cpp

include $(BUILD_SHARED_LIBRARY)
