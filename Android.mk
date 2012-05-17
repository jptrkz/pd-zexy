LOCAL_PATH := $(call my-dir)

# Build liblimiter~.so
include $(CLEAR_VARS)

LOCAL_MODULE := limiter~
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../libpd/pure-data/src
LOCAL_CFLAGS := -DPD
LOCAL_SRC_FILES := src/limiter~.c
LOCAL_SHARED_LIBRARIES := pdnative

include $(BUILD_SHARED_LIBRARY)

# Build libz~.so
include $(CLEAR_VARS)

LOCAL_MODULE := z~
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../libpd/pure-data/src
LOCAL_CFLAGS := -DPD
LOCAL_SRC_FILES := src/z~.c
LOCAL_SHARED_LIBRARIES := pdnative

include $(BUILD_SHARED_LIBRARY)
