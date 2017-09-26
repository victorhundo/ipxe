#!/bin/bash

cd /ipxe/src && make bin/undionly.kpxe EMBED=/ipxe/conf/menu.ipxe
cp /ipxe/src/bin/undionly.kpxe /srv/tftp/
/etc/init.d/tftpd-hpa start
tail -f /dev/null
