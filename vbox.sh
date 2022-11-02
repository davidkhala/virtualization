set -e


linux() {
    
    curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/vbox.sh | bash -s create-oci-key $@

}

$@
