distro=$1
echo "packing ${distro} ..."
docker exec ${distro}-container bash -c "cd build; cpack"
docker exec ${distro}-container bash -c "cd build; mv *.deb ./BornAgain-dev-${distro}.deb"
docker cp   ${distro}-container:/source/build/BornAgain-dev-${distro}.deb ./