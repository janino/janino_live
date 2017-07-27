LOCAL_PATH := $(call my-dir)


#faac
include $(CLEAR_VARS)
LOCAL_MODULE    := faac
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/faac/include
LOCAL_SRC_FILES := faac/libfaac.a
#把编译的源文件打印处理
$(info $(LOCAL_SRC_FILES))
include $(PREBUILT_STATIC_LIBRARY)

#x264
include $(CLEAR_VARS)
LOCAL_MODULE    := x264
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/x264/include
LOCAL_SRC_FILES := x264/libx264.a
$(info $(LOCAL_SRC_FILES))
include $(PREBUILT_STATIC_LIBRARY)

#rtmpdump
include $(CLEAR_VARS)
LOCAL_MODULE    := rtmpdump
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/rtmpdump/include
LOCAL_SRC_FILES := rtmpdump/librtmp.a
$(info $(LOCAL_SRC_FILES))
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := dn_live
LOCAL_SRC_FILES := dn_live.c queue.c
LOCAL_STATIC_LIBRARIES := x264 faac rtmpdump
LOCAL_LDLIBS := -llog
include $(BUILD_SHARED_LIBRARY)
