#!/bin/bash

java_version=$(java -version 2>&1 >/dev/null | grep "java version\|openjdk version" | awk '{print substr($3,2,2)}')


if [ "$java_version" == "" ]
then
    echo "Java installation failed as no java version is found"

elif [ "$java_version" == "1." ]
then
    echo "Old java version installed"

elif [ "$java_version" -ge 11 ]
then
    echo "Java version 11 and above installed successfully."

fi
