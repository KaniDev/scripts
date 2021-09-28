if [[ $1 == "build" ]]
then
    if [[ -e build ]]
    then
        cd build && conan install .. && cmake .. && cmake --build
    else
        mkdir build && cd build && conan install .. && cmake .. && cmake --build
    fi
elif [[ $1 == "clean" ]]
then
    rm -r build
else
    echo -e "./start.sh [cmd] | build/clean"
fi
