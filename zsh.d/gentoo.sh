if [ `whoami` != "root" ]; then
    alias "emerge"="sudo emerge"
    alias "eix-sync"="sudo eix-sync"
fi
