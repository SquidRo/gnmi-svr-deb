chk_subm() {
    UPD_SUBM=0

    if [[ "$1" == "-u"* ]]; then
        rm -r "./my_gnmi_server/.git"
    fi

    if [ ! -e "./my_gnmi_server/.git" ]; then
        UPD_SUBM=1
    fi

    if [ $UPD_SUBM == 1 ]; then
        echo "updating git submodule..."
        git submodule update
    else
        echo "using -u to update submodule if needed..."
    fi
}
