set -e

build-kernal() {
    sudo /sbin/vboxconfig
}
add-user() {
    sudo usermod -a -G vboxusers $USER
}
post-install() {
    add-user
}

$@
