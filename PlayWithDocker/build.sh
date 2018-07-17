distro=$1
echo "building ${distro}"
docker exec ${distro}-container bash -c "mkdir build"
docker exec ${distro}-container bash -c "cd build && cmake -D CMAKE_BUILD_TYPE=$BUILD_TYPE -D BUILD_DEBIAN=ON ../src"
docker exec ${distro}-container bash -c "cd build && make -j$(nproc)"
