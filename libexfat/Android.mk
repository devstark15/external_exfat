LOCAL_PATH := $(call my-dir)

<<<<<<< HEAD
common_src_files = cluster.c io.c log.c lookup.c mount.c node.c time.c utils.c
=======
common_src_files = cluster.c io.c log.c lookup.c mount.c node.c time.c utf.c utils.c
>>>>>>> 6be35da... Add support for building on Android

include $(CLEAR_VARS)
LOCAL_MODULE := libexfat
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -D_FILE_OFFSET_BITS=64 -Wno-sign-compare -Wno-unused-parameter
LOCAL_SRC_FILES = $(common_src_files)
LOCAL_C_INCLUDES += $(LOCAL_PATH)
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libexfat_static
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -D_FILE_OFFSET_BITS=64 -Wno-sign-compare -Wno-unused-parameter
LOCAL_SRC_FILES = $(common_src_files)
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := libfuse_static
include $(BUILD_STATIC_LIBRARY)
