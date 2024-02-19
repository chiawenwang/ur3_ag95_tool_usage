#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gavin/robot_PKU/handwriting/src/robotiq_85_gripper/robotiq_85_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/gavin/robot_PKU/handwriting/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gavin/robot_PKU/handwriting/install/lib/python3/dist-packages:/home/gavin/robot_PKU/handwriting/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gavin/robot_PKU/handwriting/build" \
    "/usr/bin/python3" \
    "/home/gavin/robot_PKU/handwriting/src/robotiq_85_gripper/robotiq_85_driver/setup.py" \
     \
    build --build-base "/home/gavin/robot_PKU/handwriting/build/robotiq_85_gripper/robotiq_85_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/gavin/robot_PKU/handwriting/install" --install-scripts="/home/gavin/robot_PKU/handwriting/install/bin"
