. $PREFIX/config/utils.sh

export PATH=~/.local/bin:"$PATH"
export RMW_IMPLEMENTATION=rmw_microxrcedds

pushd $FW_TARGETDIR >/dev/null

    pushd micro_ros_mbed >/dev/null
        mbed-tools compile -m $PLATFORM -t GCC_ARM
    popd >/dev/null

popd >/dev/null
