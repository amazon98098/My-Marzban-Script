#!/bin/bash

COMMAND=1

create_docker_file(){
  cd /root

  port1=$1
  port2=$1
  port3=$1
  port4=$1
  port5=$1
  port6=$1

  port1+=10
  port2+=11
  port3+=20
  port4+=21
  port5+=30
  port6+=31

  rm Marzban-node/docker-compose.yml

  echo "services:" >> Marzban-node/docker-compose.yml
  echo "  node-amz:" >> Marzban-node/docker-compose.yml
  echo "    # build: ." >> Marzban-node/docker-compose.yml
  echo "    image: gozargah/marzban-node:latest" >> Marzban-node/docker-compose.yml
  echo "    restart: always" >> Marzban-node/docker-compose.yml
  echo "    network_mode: host" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    environment:" >> Marzban-node/docker-compose.yml
  echo "      SERVICE_PORT: $port1" >> Marzban-node/docker-compose.yml
  echo "      XRAY_API_PORT: $port2" >> Marzban-node/docker-compose.yml
  echo "      SSL_CLIENT_CERT_FILE: "/var/lib/marzban-node/ssl_client_cert_amin.pem"" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    volumes:" >> Marzban-node/docker-compose.yml
  echo "      - /var/lib/marzban-node:/var/lib/marzban-node" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "  node-dag:" >> Marzban-node/docker-compose.yml
  echo "    # build: ." >> Marzban-node/docker-compose.yml
  echo "    image: gozargah/marzban-node:latest" >> Marzban-node/docker-compose.yml
  echo "    restart: always" >> Marzban-node/docker-compose.yml
  echo "    network_mode: host" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    environment:" >> Marzban-node/docker-compose.yml
  echo "      SERVICE_PORT: $port3" >> Marzban-node/docker-compose.yml
  echo "      XRAY_API_PORT: $port4" >> Marzban-node/docker-compose.yml
  echo "      SSL_CLIENT_CERT_FILE: "/var/lib/marzban-node/ssl_client_cert_yashar.pem"" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    volumes:" >> Marzban-node/docker-compose.yml
  echo "      - /var/lib/marzban-node:/var/lib/marzban-node" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml

  cd Marzban-node;

  docker compose down && docker compose up -d;
}

install_ssh(){
  cd /root

  rm /var/lib/marzban-node/ssl_client_cert_yashar.pem

  mkdir /var/lib/marzban-node

  echo "-----BEGIN CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "MIIEnDCCAoQCAQAwDQYJKoZIhvcNAQENBQAwEzERMA8GA1UEAwwIR296YXJnYWgw">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "IBcNMjMxMTE4MTIzNjAyWhgPMjEyMzEwMjUxMjM2MDJaMBMxETAPBgNVBAMMCEdv">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "emFyZ2FoMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtZBumpZlVRoZ">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "kjbbswEHP8blXaKIIWOW5zfOYwhu0SJFg+DoXnDDBJ3uy+gWlTraI8+PR+Qqao9T">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "+Z9vI5NEbrEtRAIq3l2bwXyHjwLer7Q1avC8bZgNC9zXnTRjnYD/FHpTl/wH4BSM">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "ls8/NylE9hJSTvMtwmbe8OOj59YKbunE3iKKxwqlNl/AQz/CDox2G3SBiqxJZGtC">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "i3lDGop+ExhVeGFjmycwVc3/B90FLNh5LNabSK/gNnCwyvpMq5UFb5ZyoIiIdQYP">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "BfnXVtnXKJT03v2MVykVnKvSYWnx7DclQoRb+kP+R28afFRAN5tXt63jkRWzDS7v">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "oPRduDwyDfClQ2qOG7NaajVVbAxkK2LiJ6vNYQqa4CB1JCKHU/+Fete7g3WvqpUO">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "ZkUhPKa1FYHBKMNhQeq0QEV3AUbmF6LRpUfRxhcPcwBiw5vytQGIeWM3wb/muqiT">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "ln9ZQZil0K0SD2o6oniqMwBL9JZMyFCPI6n4gMC+7ZNxZD3dcEsbgTiMFI6HvFVF">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "7WV9nxKzo9W5q23J1DJtB8NqoymUfYzfHbxQ25exRGX00KjATR16y6kOLBXXCOk6">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "RGyUDy5E4jqYTCaQynpYgFYjEQXDZ6FXfEaqPLKdrnUMRnUg0ZzZSQqmqPF4T4NN">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "baR8ZdFWL6mXwBoL5mloMnmIQr5ZHRsCAwEAATANBgkqhkiG9w0BAQ0FAAOCAgEA">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "lZLITzDiXanCU1cWE0J3q1CcFHCROTOaDeHnjda9lKqQ8i4XAj9Ph1sjarRKFnaS">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "BT7x9AFdpmf/1X8fkP84aoVd7yHH1bfVv3Nndnv3wQDb+SvyXdOkGCfm4svooqil">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "9PA/SvMD6i8X3c1qgzyxTKXilG54sf1yayuLo3m3SIA+8dFUdqPoyJ3E2yH/lwi3">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "ECPnS2v7zOWsykVtO9LHXp7bRYhtNkJu6c/v0s5tdE936JxnL3KgA4bSJ1hhz2Cl">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "D1COfmti3LAdJngkHc7XLQD7tskWNp05ogRZ1OVPysKnJY233uhyr1JlqPvMwXyn">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "ipLfIHiB+qJjdwfG3chQ+LknT4UrvJb/KLPMTiFx/4y47jOfx2cSf079yJJ6BZfv">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "SxP9IoCBLSEOBPNFZiR2QO3kg3AKyw/qSdOYO5W9vHuvZalXtoY3GvJh5u3/VaIv">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "O3Ydv6s+8bC8dcmCtKXMLakdeuAUT5x1xHnNP8Y45b/7OmtHNDhSRBKokZz58MOA">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "kTPkEGZROR1j4HL0R2+HpgTJPavlG3o0TkXvaKlUqHUzXqXxgptdPNm77x6EVWom">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "/yApoheDSDtCJJEiYBGLOBo1L+5UbjnKJlOLANNeM3z3wwkrZpgozm/Hiyvvi0Yj">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "4v9GUGKq/D8e2NQTJ3Xaorvy3oBVI+/1nKHTW3Qgh0w=">> /var/lib/marzban-node/ssl_client_cert_yashar.pem
  echo "-----END CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_yashar.pem

  rm /var/lib/marzban-node/ssl_client_cert_amin.pem

  echo "-----BEGIN CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "MIIEnDCCAoQCAQAwDQYJKoZIhvcNAQENBQAwEzERMA8GA1UEAwwIR296YXJnYWgw">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "IBcNMjMxMTI5MDY0ODM4WhgPMjEyMzExMDUwNjQ4MzhaMBMxETAPBgNVBAMMCEdv">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "emFyZ2FoMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAoK9G9du4YpdS">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "7wz/wSmq9282kmrf8AmFfUO5YpcnyloZ6+DufrmX1x8gU3kb/J5Kke/JB81Tjlay">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "L08AerIAcFAjltbPnPvCLQycjT1MsQZlZJx2efqnz5DsTBglG+uaEO7OgHbI5KrV">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "nG22HgE8BQP13gwOJ2GfpqPmJCvF7laj7h1FJC8e16sseZR+MnmY3CJS+6uXPX42">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "1Oder5HECQ6qCWYYKMF6L0MKqa78PipWtetBGof1XPddd+YzcGmNxn38eMqpNpBo">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "QhAU9WwyASYgW0ADyvA4FmIQBkw9di9OixFXpjze53tm1jUxbGU4w+jqMmmvismN">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "1xQdgrYK4t1+I5/PdZFIF1FXxH0akNvf8W1fIsWUf+YTtPNlSmPAlE4DX6DTtAng">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "ZgNglfv8ZLE6yiabPGbH3j0Sp0E2p0Tf0P2TnG1sH0UjHjk+WBHDDObCN5kaXl08">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "qwTsItyX4PaAPY2FWx9EOuUuCrR6/LrRGAMYBiD3q0YR4/emf+rnirPv9s5v/bhh">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "W7/zwuV+3gPCrKRqF7hyqerdb5VOBWoecLDf3PSWgYnrDC7ojHLwWr3rBQ6UHwr7">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "bfb/8dvPmwTEPkgFskIK5RrKnZvL+PLHOQK8hi5a08qBQELgqdfTHlpN3J5WjxO5">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "4f0hoPrNKlXwRzNx7kJEBEEPJB8lpe0CAwEAATANBgkqhkiG9w0BAQ0FAAOCAgEA">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "AmUBgUihWwPoeWz86jnm2ZGYA1ZLSJtgBNSarI4FZX2l+lyGctz5H6bT+W3ofXZ4">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "mDpLB7p7GQKN7Vm/HvpOH4TF0ue7MGanv/1O5ThG+VE331Lc/EGg6aRzhO9Los16">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "FuQTsQXD1LQFFxx5BTALMT6TKQmjfDBDPtN5fSZKVPzlB2U31+OdInH/bDwDvPS+">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "h3F4gVNJopFxgjPXCNzyWUgCNnui0f3f3xzXnFshN6VOmFF7Ii7OXgrNmDCa+Bcl">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "veA9BumExUWWEZ/REu5HP4ptfh3msRsV33xcGse54fABbg08BJhYc0FMdJOqb6hA">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "I4fTgKmL+gSltFC1m64FZmX4VRYs1LjElnuoiIg4HKs0EiAYIAkce2kNgC5Kn7Fq">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "ZAGYvBgeyner7uG7wg3zXpDJJ6X0oHh24L/7CtMfZA3OFq9P+s/vZ4Y1OM5K9tg+">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "w2yXhwCULkgTNaCyfBrvNhojxODmxYj54MOvuEdIQ4BJPMezwjnnKMVOCCWrVBWr">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "dB9t7YuERXeAtQBgDayh745TkpWsphfwZYhl1+ATaFsLSHSgBCgif7UiVO7VYPX4">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "8e2Rj2x+/yEHW254qZ7TdNEorLWNdqTfRyTPa0bLsmGYsrLoSBVZhvZ1EDnbeXp0">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "h3h9vGsQE+ZgZuQcNayyjOy57crW5t/+ziwyfawOY8s=">> /var/lib/marzban-node/ssl_client_cert_amin.pem
  echo "-----END CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_amin.pem

}

add_node() {
  cd /root

  input_num=1

  read -r -p "Enter a Number: " input_num

  sudo apt update && sudo apt upgrade -y

  curl -fsSL https://get.docker.com | sh

  git clone https://github.com/Gozargah/Marzban-node

  install_ssh

  create_docker_file "$input_num"
}

update_node() {
  cd /root

  input_num=1

  read -r -p "Enter Starting Two Digits : " input_num

  create_docker_file "$input_num"
}

backup() {
# Bot token
# گرفتن توکن ربات از کاربر و ذخیره آن در متغیر tk
tk=6510376938:AAE6qkMopuqXYPTFc7kLEOllM8ZVwfnmyQU
# while [[ -z "$tk" ]]; do
#     echo "Bot token: "
#     read -r tk
#     if [[ $tk == $'\0' ]]; then
#         echo "Invalid input. Token cannot be empty."
#         unset tk
#     fi
# done

# Chat id
# گرفتن Chat ID از کاربر و ذخیره آن در متغیر chatid
chatid=266914872
# while [[ -z "$chatid" ]]; do
#     echo "Chat id: "
#     read -r chatid
#     if [[ $chatid == $'\0' ]]; then
#         echo "Invalid input. Chat id cannot be empty."
#         unset chatid
#     elif [[ ! $chatid =~ ^\-?[0-9]+$ ]]; then
#         echo "${chatid} is not a number."
#         unset chatid
#     fi
# done

# Caption
# گرفتن عنوان برای فایل پشتیبان و ذخیره آن در متغیر caption
echo "Caption (for example, your domain, to identify the database file more easily): "
read -r caption

# Cronjob
# تعیین زمانی برای اجرای این اسکریپت به صورت دوره‌ای

while true; do
    echo "Cronjob (minutes and hours) (e.g : 30 6 or 0 12) : "
    minute=0
    hour=3
    # read -r minute hour
    if [[ $minute == 0 ]] && [[ $hour == 0 ]]; then
        cron_time="* * * * *"
        break
    elif [[ $minute == 0 ]] && [[ $hour =~ ^[0-9]+$ ]] && [[ $hour -lt 24 ]]; then
        cron_time="0 */${hour} * * *"
        break
    elif [[ $hour == 0 ]] && [[ $minute =~ ^[0-9]+$ ]] && [[ $minute -lt 60 ]]; then
        cron_time="*/${minute} * * * *"
        break
    elif [[ $minute =~ ^[0-9]+$ ]] && [[ $hour =~ ^[0-9]+$ ]] && [[ $hour -lt 24 ]] && [[ $minute -lt 60 ]]; then
        cron_time="*/${minute} */${hour} * * *"
        break
    else
        echo "Invalid input, please enter a valid cronjob format (minutes and hours, e.g: 0 6 or 30 12)"
    fi
done

# x-ui or marzban or hiddify
# گرفتن نوع نرم افزاری که می‌خواهیم پشتیبانی از آن بگیریم و ذخیره آن در متغیر xmh
xmh="m"
# while [[ -z "$xmh" ]]; do
#     echo "x-ui or marzban or hiddify? [x/m/h] : "
#     read -r xmh
#     if [[ $xmh == $'\0' ]]; then
#         echo "Invalid input. Please choose x, m or h."
#         unset xmh
#     elif [[ ! $xmh =~ ^[xmh]$ ]]; then
#         echo "${xmh} is not a valid option. Please choose x, m or h."
#         unset xmh
#     fi
# done

crontabs="y"
# while [[ -z "$crontabs" ]]; do
#     echo "Would you like the previous crontabs to be cleared? [y/n] : "
#     read -r crontabs
#     if [[ $crontabs == $'\0' ]]; then
#         echo "Invalid input. Please choose y or n."
#         unset crontabs
#     elif [[ ! $crontabs =~ ^[yn]$ ]]; then
#         echo "${crontabs} is not a valid option. Please choose y or n."
#         unset crontabs
#     fi
# done

if [[ "$crontabs" == "y" ]]; then
# remove cronjobs
sudo crontab -l | grep -vE '/root/ac-backup.+\.sh' | crontab -
fi


# m backup
# ساخت فایل پشتیبانی برای نرم‌افزار Marzban و ذخیره آن در فایل ac-backup.zip
if [[ "$xmh" == "m" ]]; then

if dir=$(find /opt /root -type d -iname "marzban" -print -quit); then
  echo "The folder exists at $dir"
else
  echo "The folder does not exist."
  exit 1
fi

if [ -d "/var/lib/marzban/mysql" ]; then

  sed -i -e 's/\s*=\s*/=/' -e 's/\s*:\s*/:/' -e 's/^\s*//' /opt/marzban/.env

  docker exec marzban-mysql-1 bash -c "mkdir -p /var/lib/mysql/db-backup"
  source /opt/marzban/.env

    cat > "/var/lib/marzban/mysql/ac-backup.sh" <<EOL
#!/bin/bash

USER="root"
PASSWORD="$MYSQL_ROOT_PASSWORD"


databases=\$(mysql -h 127.0.0.1 --user=\$USER --password=\$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database)

for db in \$databases; do
    if [[ "\$db" != "information_schema" ]] && [[ "\$db" != "mysql" ]] && [[ "\$db" != "performance_schema" ]] && [[ "\$db" != "sys" ]] ; then
        echo "Dumping database: \$db"
		mysqldump -h 127.0.0.1 --force --opt --user=\$USER --password=\$PASSWORD --databases \$db > /var/lib/mysql/db-backup/\$db.sql

    fi
done

EOL
chmod +x /var/lib/marzban/mysql/ac-backup.sh

ZIP=$(cat <<EOF
docker exec marzban-mysql-1 bash -c "/var/lib/mysql/ac-backup.sh"
zip -r /root/ac-backup-m.zip /opt/marzban/* /var/lib/marzban/* /opt/marzban/.env -x /var/lib/marzban/mysql/\*
zip -r /root/ac-backup-m.zip /var/lib/marzban/mysql/db-backup/*
rm -rf /var/lib/marzban/mysql/db-backup/*
EOF
)

    else
      ZIP="zip -r /root/ac-backup-m.zip ${dir}/* /var/lib/marzban/* /opt/marzban/.env"
fi

ACLover="marzban backup"

# x-ui backup
# ساخت فایل پشتیبانی برای نرم‌افزار X-UI و ذخیره آن در فایل ac-backup.zip
elif [[ "$xmh" == "x" ]]; then

if dbDir=$(find /etc /opt/freedom -type d -iname "x-ui*" -print -quit); then
  echo "The folder exists at $dbDir"
  if [[ $dbDir == *"/opt/freedom/x-ui"* ]]; then
     dbDir="${dbDir}/db/"
  fi
else
  echo "The folder does not exist."
  exit 1
fi

if configDir=$(find /usr/local -type d -iname "x-ui*" -print -quit); then
  echo "The folder exists at $configDir"
else
  echo "The folder does not exist."
  exit 1
fi

ZIP="zip /root/ac-backup-x.zip ${dbDir}/x-ui.db ${configDir}/config.json"
ACLover="x-ui backup"

# hiddify backup
# ساخت فایل پشتیبانی برای نرم‌افزار Hiddify و ذخیره آن در فایل ac-backup.zip
elif [[ "$xmh" == "h" ]]; then

if ! find /opt/hiddify-config/hiddify-panel/ -type d -iname "backup" -print -quit; then
  echo "The folder does not exist."
  exit 1
fi

ZIP=$(cat <<EOF
cd /opt/hiddify-config/hiddify-panel/
if [ $(find /opt/hiddify-config/hiddify-panel/backup -type f | wc -l) -gt 100 ]; then
  find /opt/hiddify-config/hiddify-panel/backup -type f -delete
fi
python3 -m hiddifypanel backup
cd /opt/hiddify-config/hiddify-panel/backup
latest_file=\$(ls -t *.json | head -n1)
rm -f /root/ac-backup-h.zip
zip /root/ac-backup-h.zip /opt/hiddify-config/hiddify-panel/backup/\$latest_file

EOF
)
ACLover="hiddify backup"
else
echo "Please choose m or x or h only !"
exit 1
fi


trim() {
    # remove leading and trailing whitespace/lines
    local var="$*"
    # remove leading whitespace characters
    var="${var#"${var%%[![:space:]]*}"}"
    # remove trailing whitespace characters
    var="${var%"${var##*[![:space:]]}"}"
    echo -n "$var"
}

IP=$(ip route get 1 | sed -n 's/^.*src \([0-9.]*\) .*$/\1/p')
caption="${caption}\n\n${ACLover}\n<code>${IP}</code>\nCreated by @AC_Lover - https://github.com/AC-Lover/backup"
comment=$(echo -e "$caption" | sed 's/<code>//g;s/<\/code>//g')
comment=$(trim "$comment")

# install zip
# نصب پکیج zip
sudo apt install zip -y

# send backup to telegram
# ارسال فایل پشتیبانی به تلگرام
cat > "/root/ac-backup-${xmh}.sh" <<EOL
rm -rf /root/ac-backup-${xmh}.zip
$ZIP
echo -e "$comment" | zip -z /root/ac-backup-${xmh}.zip
curl -F chat_id="${chatid}" -F caption=\$'${caption}' -F parse_mode="HTML" -F document=@"/root/ac-backup-${xmh}.zip" https://api.telegram.org/bot${tk}/sendDocument
EOL


# Add cronjob
# افزودن کرانجاب جدید برای اجرای دوره‌ای این اسکریپت
{ crontab -l -u root; echo "${cron_time} /bin/bash /root/ac-backup-${xmh}.sh >/dev/null 2>&1"; } | crontab -u root -

# run the script
# اجرای این اسکریپت
bash "/root/ac-backup-${xmh}.sh"

# Done
# پایان اجرای اسکریپت
echo -e "\nDone\n"
}

echo "Select Operation :"
echo "1. Add Node"
echo "2. Update Node"
read -r -p "Select Number(Default is: 1):" COMMAND

case $COMMAND in
    1)  add_node
	  echo
    echo "=== Finished ==="
    echo
    exit ;;
    2)  update_node
    echo
    echo "=== Finished ==="
    echo
    exit ;;

    *)   echo "Done."; exit 1 ;;

esac
