JNI_LOCAL_PATH := $(call my-dir)

M64P_API_INCLUDES := $(JNI_LOCAL_PATH)/core/src/api/
SDL_INCLUDES := $(JNI_LOCAL_PATH)/SDL/include/
PNG_INCLUDES := $(JNI_LOCAL_PATH)/png/include/
SAMPLERATE_INCLUDES := $(JNI_LOCAL_PATH)/libsamplerate/

SDL_MAIN_ENTRY := ../../../SDL/src/main/android/SDL_android_main.cpp

COMMON_CFLAGS :=                    \
    -O3                             \
    -ffast-math                     \
    -fno-strict-aliasing            \
    -fomit-frame-pointer            \
    -frename-registers              \
    -fsingle-precision-constant     \
    -fvisibility=hidden             \

COMMON_CPPFLAGS :=                  \
    -fvisibility-inlines-hidden     \

include $(call all-subdir-makefiles)
include $(wildcard $(JNI_LOCAL_PATH)/*/projects/android/Android.mk)