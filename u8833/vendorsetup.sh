#!/bin/sh

  DEVICE_NAME=${LUNCH#*_} DEVICE_NAME=${DEVICE_NAME%-*}
  if [ "$DEVICE_NAME" == "aokp_u8833" ]
  then
    sh device/huawei/msm7x27a-common/patches/apply.sh
    sh device/huawei/u8833/patches/apply.sh
  fi
fi
