#!/bin/bash
clear
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo -e "\033[0;35m"
echo " :;:;:;:;:; :;:;:;:;:;         :;:;      :;:     :;:;:     :;:;:;:;:;:    :;:;:;:;:; "; 
echo " :+:     +: :+:                :+::+:    :+:   :+:   :+:   :+:       :+:  :+:        ";
echo " +;+     :+ +;+                +;+ +;+   +;+ +;+      +;+  +;+        +;+ +;+        ";
echo " +#:+#:+#:  +#:        #=#=#=# +#:  +#:  +#: +#:       +#: +#:        +#: +#:+#:+#:+ ";
echo " #+#     +# #+#                #+#   #+# #+#  #+#     #+#  #+#       #+#  #+#        ";
echo " +#+     #+ +#+                +#+    +#+#+    +#+   +#+   +#+      +#+   +#+        ";
echo " #########  ##########         ###     ####      #####     ##########     ########## ";
echo -e "\e[0m"

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++" 

echo -e '\e[33mGarapan :\e[35m' Register Deinfra Testnet
echo -e '\e[33mAuthor :\e[35m' BeritaCryptoo
echo -e '\e[33mTelegram Channel :\e[35m' https://t.meBeritaCryptoo
echo -e '\e[33mTelegram Group :\e[35m' https://t.me/BeritaaCryptooGroup
echo -e '\e[33mTwitter :\e[35m' https://twitter.com/BeritaCryptoo
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++"

sleep 2

echo -e "\e[1m\e[32m1. Updating packages... \e[0m" && sleep 1
# update
sudo apt update -y && sudo apt install jq && sudo apt install apt-transport-https ca-certificates curl software-properties-common -y && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin && sudo apt install docker-compose

echo -e "\e[1m\e[32m2. Pull Docker... \e[0m" && sleep 1
# pull
docker pull thepowerio/tpnode

echo -e "\e[1m\e[32m3. Run Docker... \e[0m" && sleep 1
# Run Docker
docker run -d -p 44000:44000 --name tpnode thepowerio/tpnode

echo '=============== UDAH GITU DOANG ===================' && sleep 1
