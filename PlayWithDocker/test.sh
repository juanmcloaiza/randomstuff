distro=$1
echo "ctesting ${distro} ... "
docker exec ${distro}-container bash -c "cd build; ctest"