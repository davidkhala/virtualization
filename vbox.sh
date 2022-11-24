set -e


linux() {
    
    curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/vbox.sh | bash -s create-oci-key $@

}
list-vm-all(){
    vboxmanage list vms
}
list-vm(){
    vboxmanage list runningvms
}
start-vm(){
    VBoxManage startvm $1
}
delete-vm(){
    VBoxManage unregistervm --delete $1
}
stop-vm(){
    VBoxManage controlvm $1 acpipowerbutton
}
$@
