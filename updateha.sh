#!/bin/bash

touch updateha2.sh

printf "#!/bin/bash\n\nsource /srv/homeassistant/homeassistant_venv/bin/activate\npip3 install --upgrade homeassistant\nexit"

chmod +x /tmp/updateha2.sh

sudo su -s /bin/bash homeassistant -c /tmp/updateha2.sh

rm /tmp/updateha2.sh