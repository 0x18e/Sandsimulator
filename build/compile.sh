#!/bin/sh
cmake ../
if [ $? -ne 0 ]; then
    echo "CMake failed!"
    exit 1
fi
cmake --build .
if [ $? -ne 0 ]; then
    echo "CMake failed!"
    exit 1
fi

./NewtonianDynamics
