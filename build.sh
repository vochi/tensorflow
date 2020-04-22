#/bin/bash

bazel build \
    -c opt \
    --fat_apk_cpu=x86,x86_64,arm64-v8a,armeabi-v7a \
    --host_crosstool_top=@bazel_tools//tools/cpp:toolchain \
    tensorflow/lite/java:tensorflow-lite \
    tensorflow/lite/java:tensorflow-lite-xnnpack \
    tensorflow/lite/java:tensorflow-lite-gpu
