distro=$1

docker build -t bornagain/${distro} -f `dirname $0`/Dockerfile.${distro} .

docker run -d --name ${distro}-container -it bornagain/${distro}

docker ps -a