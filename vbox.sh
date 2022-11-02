set -e

export CloudProfilePath=~/.config/VirtualBox/oci_config
create-oci-key() {

    local privateKey=${1:-~/.oci/oci_api_key_vbox.pem}
    local publicKey=${2:-~/.oci/oci_api_key_public_vbox.pem}
    openssl genrsa -out $privateKey 2048
    chmod go-rwx $privateKey
    openssl rsa -pubout -in $privateKey -out $publicKey
    
    xclip -sel clip $publicKey

}

$@
