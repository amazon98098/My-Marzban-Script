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
  echo "      SSL_CLIENT_CERT_FILE: "/var/lib/marzban-node/ssl_client_cert_amz.pem"" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    volumes:" >> Marzban-node/docker-compose.yml
  echo "      - /var/lib/marzban-node:/var/lib/marzban-node" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "  node-myblog:" >> Marzban-node/docker-compose.yml
  echo "    # build: ." >> Marzban-node/docker-compose.yml
  echo "    image: gozargah/marzban-node:latest" >> Marzban-node/docker-compose.yml
  echo "    restart: always" >> Marzban-node/docker-compose.yml
  echo "    network_mode: host" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    environment:" >> Marzban-node/docker-compose.yml
  echo "      SERVICE_PORT: $port5" >> Marzban-node/docker-compose.yml
  echo "      XRAY_API_PORT: $port6" >> Marzban-node/docker-compose.yml
  echo "      SSL_CLIENT_CERT_FILE: "/var/lib/marzban-node/ssl_client_cert_myblog.pem"" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    volumes:" >> Marzban-node/docker-compose.yml
  echo "      - /var/lib/marzban-node:/var/lib/marzban-node" >> Marzban-node/docker-compose.yml

  cd Marzban-node;

  docker compose down && docker compose up -d;
}

create_docker_file_for_downgrade(){
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
  echo "      SSL_CLIENT_CERT_FILE: /var/lib/marzban-node/ssl_client_cert_amz.pem" >> Marzban-node/docker-compose.yml
  echo "      XRAY_EXECUTABLE_PATH: "/var/lib/marzban/xray-core/xray"" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    volumes:" >> Marzban-node/docker-compose.yml
  echo "      - /var/lib/marzban-node:/var/lib/marzban-node" >> Marzban-node/docker-compose.yml
  echo "      - /var/lib/marzban:/var/lib/marzban" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "  node-myblog:" >> Marzban-node/docker-compose.yml
  echo "    # build: ." >> Marzban-node/docker-compose.yml
  echo "    image: gozargah/marzban-node:latest" >> Marzban-node/docker-compose.yml
  echo "    restart: always" >> Marzban-node/docker-compose.yml
  echo "    network_mode: host" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    environment:" >> Marzban-node/docker-compose.yml
  echo "      SERVICE_PORT: $port5" >> Marzban-node/docker-compose.yml
  echo "      XRAY_API_PORT: $port6" >> Marzban-node/docker-compose.yml
  echo "      SSL_CLIENT_CERT_FILE: /var/lib/marzban-node/ssl_client_cert_myblog.pem" >> Marzban-node/docker-compose.yml
  echo "      XRAY_EXECUTABLE_PATH: "/var/lib/marzban/xray-core/xray"" >> Marzban-node/docker-compose.yml
  echo "" >> Marzban-node/docker-compose.yml
  echo "    volumes:" >> Marzban-node/docker-compose.yml
  echo "      - /var/lib/marzban-node:/var/lib/marzban-node" >> Marzban-node/docker-compose.yml
  echo "      - /var/lib/marzban:/var/lib/marzban" >> Marzban-node/docker-compose.yml

  cd Marzban-node;

  docker compose down && docker compose up -d;
}

install_ssh(){
  cd /root

  rm /var/lib/marzban-node/ssl_client_cert_amz.pem

  mkdir /var/lib/marzban-node

  echo "-----BEGIN CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "MIIEnDCCAoQCAQAwDQYJKoZIhvcNAQENBQAwEzERMA8GA1UEAwwIR296YXJnYWgw">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "IBcNMjMxMTE5MTAxOTUzWhgPMjEyMzEwMjYxMDE5NTNaMBMxETAPBgNVBAMMCEdv">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "emFyZ2FoMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAuj7fGeCs9gOT">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "jzsigwC5MjJA6qyUW/IKsDSR1PHxu9vc6tB6uugCoy/rp9uMvjyswlJmWYdkQSXT">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "ZG3qrg5DTGPo1/d/+8vOgTiwzkA4dzdFGd6etsNGbM4WaU9LxaHPiHFzqoEFaUkt">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "8l2blalNH5TDhCrtdxqthkjSXap5I0O9zMg2TqRVMebsIBeFsOKq3yOEA2YlNnTZ">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "UcPU6IZEFYD41sw8PQgBxcgzsZiWSE/NOPhvVQOSe2nCx6Iw4GsIJGTv8RV8w5VT">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "1bcl6r98BSlfOmDrdAZD7bK7Gei94D5/SO2JKONLwSnjCXkzObSuKQNs9pbHYfP5">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "iZL/JGX5t+uAT5V/1Xnyupy3Bq8K1QviFVb3K9UdnhHESSZ5f8U9L+3aQqTHIHAE">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "AE2AxHY22NddmrMRvzV6kXC39JE7PXzQ9PIy5rad+6fNbX0hDpDK8lymsUFa8nON">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "LdOQftUc/wSUFSa7HYSLLAAWHxJ/e/+vERUg2LLxz6KUyxRV9Au/ozrBDAYNQ9uU">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "k16s+5KMtRIxo93FyK84gpsuvA+HJiFbb0Zuua8DJSZRyoUtzbKugDMizdVvBaA+">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "yKPV3carEnZzSI1Kwxx07xaQQIg6hq2Q3P2fA/3Lm5kbGse+E3k4PeCgns6lTmCF">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "isaD0mX5lgMit/hSA2M8JslADIRaSOkCAwEAATANBgkqhkiG9w0BAQ0FAAOCAgEA">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "eJcCUNP4PbLZUIvKidd80gpoYOsl11qURBFd9pmt4g9psigj+GcO4P2y7YLFie7L">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "+0VP8v8V1c9F7OhyQt/Yz7Nr05aDQ0v2vYhDabUHh9q4VdNfXTE+GKw8ls6lFJAe">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "BPKtPCDNy/BhILoqI9s5/FGnGarKpK0o1pU/7qAr3ZXMoRUVNNjZoPe9mCtB2jMj">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "rin9ijuqo8RiLrhn4jFwK9qx4w9L1UtDD8/oLA89a3YIfbW8Ahv13ZXij0Zyg3zM">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "7C3/FM3NGbIxOOnj6z8Hb2gGhjo7rN8rB71CRk1H85/5QYAwR2tkCJPZxsA5YSgU">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "xZwFLpFeqfwrtgReG7uxiB1f1Ixn6rNiguzmXKSCujMhM/WExHlOJarETOCDooey">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "nujrYqfLkxvcwNUKta7ptVYHqU82zMsLZfey3FlFZ0XXgQgNuaH4QThgVqD/qKmf">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "QIsNhYCkGvEIx1jDsut7oy00/L7AV4hd06zSFdaTdPyIxGMhLJSVmWqhc4eVXd4b">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "5FBSVkWFKnkiCMm1GeCN5rVk4oowEIHYUP+hwro4qEKqQnhQi8oIENoiOtoG+Y6X">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "juftKEkYLj7MuLAwMgFhvAnIpbxld/jtlzw4JETybZfIzpDsASnRT6Msc+S0j+kJ">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "71OZgaRifyRvRtjyt1FhEjJKAlt56fOLiutLngV971Q=">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "-----END CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_amz.pem
  echo "">> /var/lib/marzban-node/ssl_client_cert_amz.pem

  rm /var/lib/marzban-node/ssl_client_cert_myblog.pem

 echo "-----BEGIN CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "MIIEnDCCAoQCAQAwDQYJKoZIhvcNAQENBQAwEzERMA8GA1UEAwwIR296YXJnYWgw">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "IBcNMjQwNzI0MTAxNzA2WhgPMjEyNDA2MzAxMDE3MDZaMBMxETAPBgNVBAMMCEdv">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "emFyZ2FoMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAyoXohiImsrlb">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "L7aPaIjWgz4ve0HuxcVC1tg29dF1cm9SJUlrwYsYxcLI12xfKzZkyUyHVQxUebWF">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "xQgH894AZuZtE1HqsH+zyE1vZRwllMWm01+GFUYAWRE6GBZmhukVUYrCjHLdc9zw">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "TM9HcKufIoYK+ERlx+kXVIb1auGZ/NqXwaaejJmxixCiWBo4o0Y7LplH2kJV9H0z">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "n7cxtHxNDsEUajCOjKlGKoIE4ZYzrS51j9V/nxZH+cdV2lMsnq1oxFOrdnIEe6y+">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "yEVl/+lH69n4A+AKhhhdxC1NS8XmasRI932qN5mRJbwSMHrzhfhji9WJAOtkJNTz">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "XYpBUwe/Dbcnvy59P28rHcXomaDlmBP/AwyVs3gCfbRCHZ92VvyOcOpAKVU9okmP">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "T3IR3jXMmK5b1YWLpx6imDmxtenGExh0fYUCv568d7i3LTdoIM+wTEalxVBAuvFb">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "1xusZ2cBiqGgWYs5PWV1ReQKzOC6tCsqmlukTpNbZfofskYUUST3fQWVw9p9F5qI">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "uzQ2/F0iCf5yJobFwX3vfXBl63VyW02TFwCEEcJ3Jm7pYUq7H0s1q29WSk3fbWfc">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "cdJWF78htZUfpAuT+1h9RnNM8rjSZqLERZl6vAtgolxSh0QfvjDurfwPf9qE+WPr">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "jJMoaCJm2HEd0m7Z4sQGIpKkqbCdUAsCAwEAATANBgkqhkiG9w0BAQ0FAAOCAgEA">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "IqtBAUiSu2fsHPSj/Wen9KpJ7D4G7DDXAo1+yZWIXW2TPsl96Ssos+3nFIu9drMM">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "r0fbABqz/jXWjMMAy0ZrJP7aT3cdqON8F5Pqch7U8Cjv0AlVnFPR3/8Rhx8f7Gyi">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "xVPVhxzHWw1G1Hw7si5Tf7kj30KhZyV5JKJSQqOYnD94anCf1Ausk1zXmDX/P+Q8">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "PxzivzGdHOfp5PzJx9LZUsSD4iCaDuWsg+T6P+Uw4RyOgGO/f2eK1g/GbRddyl9S">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "mZkmSudwIt9w1Iho63FhNtGytSfo+prsy/Ids48AJl+Rb/jmzLiZ6mZMjNngcWc2">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "HjNve83WaxCBVTPYkKYjSxqwkgs3dRptYwAS8v3M9NZpiWPcXxPrATCO834Ueppq">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "5CWeDBPgMuIZj8BaAFHnhFVOXE/hBObFC5M+n19zEXOM0VwpX/OQTGqRoP7Fpx8c">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "FNZB128LJKO7eYrkbtz/lqgsh6FqLrSn/EI7Qls68XE+GScylmUCQlp6wY16Sk4u">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "xYzrfvHWxCPy76uyPilTmAzR8kNvcJ2BlVeOvbMcxA7JLnI9J3n8/6aSgt/CkqUA">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "Mj/NQwaLLgmSx+N1REaBlz3Z96KXng1mYpXNi6v5eHqneexD/LTOvXfkOeE2lcJP">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "mFNuO1kvq5A0ksxOWAKmsgkZBHcy/EyjoqFgoL5WE94=">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
echo "-----END CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_myblog.pem;
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

  downgrade_xray "$input_num"
}

update_node() {
  cd /root

  input_num=1

  read -r -p "Enter Starting Two Digits : " input_num

  create_docker_file "$input_num"

  downgrade_xray "$input_num"
}

downgrade_xray(){

  cd /root

  apt install wget unzip

  rm -r /var/lib/marzban/xray-core

  mkdir -p /var/lib/marzban/xray-core && cd /var/lib/marzban/xray-core

  wget https://github.com/XTLS/Xray-core/releases/download/v1.8.4/Xray-linux-64.zip

  unzip Xray-linux-64.zip

  rm Xray-linux-64.zip

  create_docker_file_for_downgrade "$1"
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
echo "3. backup"
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
    3)  backup
    echo
    echo "=== Finished ==="
    echo
    exit ;;

    *)   echo "Done."; exit 1 ;;

esac
