for distro in "xenial" "bionic" "jessie" "stretch"
do
    bash install.sh ${distro}
    bash build.sh ${distro}
    bash test.sh ${distro}
    bash pack.sh ${distro}
done