#!/bin/bash

vmshare=/mnt/hgfs/vmshare
isoname=minix_x86.iso
logfile=minix.log

[[ -f "${vmshare}/${isoname}" ]] && sudo rm "${vmshare}/${isoname}"
[[ -f "${logfile}" ]] && rm "${logfile}"

./releasetools/x86_cdimage.sh | tee "${logfile}"

[[ $? -eq 0 ]] && sudo mv "${isoname}" "${vmshare}"
