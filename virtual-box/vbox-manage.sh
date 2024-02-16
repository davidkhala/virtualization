list-vm-all() {
    vboxmanage list vms
}
list-vm() {
    vboxmanage list runningvms
}
start-vm() {
    vboxmanage startvm $1
}
delete-vm() {
    vboxmanage unregistervm --delete $1
}
stop-vm() {
    
    vboxmanage controlvm $1 acpipowerbutton
}
$@
