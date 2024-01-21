#!/bin/bash

COMMAND=1

add_node() {

input_num=1

read -r -p "Enter a Number: " input_num

port1=$input_num
port2=$input_num
port3=$input_num
port4=$input_num
port5=$input_num
port6=$input_num

port1+=10
port2+=11
port3+=20
port4+=21
port5+=30
port6+=31

sudo apt update && sudo apt upgrade -y

curl -fsSL https://get.docker.com | sh

git clone https://github.com/Gozargah/Marzban-node

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

rm /var/lib/marzban-node/ssl_client_cert_dag.pem

echo "-----BEGIN CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "MIIEnDCCAoQCAQAwDQYJKoZIhvcNAQENBQAwEzERMA8GA1UEAwwIR296YXJnYWgw">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "IBcNMjMxMTE4MTk1MzA3WhgPMjEyMzEwMjUxOTUzMDdaMBMxETAPBgNVBAMMCEdv">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "emFyZ2FoMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA2pxPV2xJogDZ">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "y2J869WOrhLL3SWAHBWsbSQtPmSu4b/xFyItcrv4bHyPtHo1hsE0tvXMLpPminjM">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "y/cHopjOZXBx+3OdQaE4fbQhb6d2FJAl7Q9tkZVr2a/NCwvDoeXogAf7pwGX7+iu">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "QkO1Dlz2weyxbNxNrTxz1r/Q9MDcZhE8Q0THNq5pJ/eZT7G56EY9pkidjJ/zka2C">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "6woV893T8bG6mOlEfxwj5uV56uKQ+1w28Hx7AQHEdJ38i2P7BtChldT/v9He3JKD">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "tfUToggC2SRt74jIRqj3zid4mkx6RPPmPM8SJ2ODh0XKo552nL1LdfWvukzURHiF">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "AsyFxSPkyDAxMMCtPK9WvPRQnMP5j3AsNZ85ZtDJJfeLi5ALPf68iK0dfoinlCqy">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "nIH1hxNNceygx/CB0JsXMBz/7k6hFYW3FtONHsDQvS484c/HRCxQcPpasa5id6pD">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "HAojevXcTjn1/c2+5LGaX8/OXw6gCsffP8y0kvzTbSkcSm/UIQbTVG1wxwJvaT4L">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "vx1kdi/Oc+n7BsWFPnVtQ5315Ye6D6CS34KrNlh39WHdj/eggKCPPQ5/MEO318Lb">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "IT6fMG+AhuATqVtY87EvxhYa7i7UPrGFisrIDk7gFfha8PwtgsO7fTz/Hv4vhkI5">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "wab8uBT1shRIkoejAyKmr1EtNt9lpU8CAwEAATANBgkqhkiG9w0BAQ0FAAOCAgEA">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "BrvqVYPrVumY2TW4mZaVUGn/VBgLn/sc6lOaxf4a4/R9enSC8xxvx0xVJWn9ZQQP">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "wvsx38oQJMdivUgFFY2tcN/BYbjVT44Wkzer4UG5R1U+RpZ4v7NOWG5a96iwweD5">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "wcl7DZ4IvBmD//O0I0aTSpc7YIlTqHUIVZusmp2bxAjAopttcAqthr+xSi//ThJA">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "Nx+vEpSNWo0TG+YfWmtgf0REp7Tyz832eN3L95VP8KpqtO7bBXOjGJ+7HAT/M/Sl">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "rHi9TERfkeUus+QxZuj8tEuTf9/+46U09wkuP0ceCQQDdSaQ6IiQ0xTzlMJ0RMvE">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "1O8E3LmCuc9BQI3pFHw+RFsLEedjo3sXZq4p9JNy/2bGLrWOso52XEM+fCMiXF6v">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "N+KDqx+ILeTkyo9H5aERsLxxjSkZHbXssIIGi9Qgk1o6W6Mijh+VpfUDdQPHedF8">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "jtZuC+zi0s7ll0L6WeFBiNV9SyMPUlPh0FozLBN4ySqYPoletw1LqBTatMuwSt4N">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "aRrE5NLF6XDa9g1hpg1GW9GZTizt5/8mkv5lE8x92p680Ung65w7BhlFLvF21tSH">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "g01uR5dQ0gXcWVRspEpRP7DZuziEJmYTqCPdeDB7YT+J+gbOyTJo32y01QJuCm9p">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "zqrlBd1DKTh6EfP58h2mNkYOgPTTy0Gi0Aej+V5uuZk=">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "-----END CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_dag.pem
echo "">> /var/lib/marzban-node/ssl_client_cert_dag.pem

rm /var/lib/marzban-node/ssl_client_cert_myblog.pem

echo "-----BEGIN CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "MIIEnDCCAoQCAQAwDQYJKoZIhvcNAQENBQAwEzERMA8GA1UEAwwIR296YXJnYWgw">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "IBcNMjMxMjI1MjE1MDMyWhgPMjEyMzEyMDEyMTUwMzJaMBMxETAPBgNVBAMMCEdv">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "emFyZ2FoMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA5WjeOfyVDRzZ">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "0xxYfpOxK3wSmuPcSkWVc0YfZROWigETJjnBGYVX20Pd9wRESlTSZ4itxYuibo8t">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "8I0n2vg1MPhtT78dqgA5SxMlZOx2zOVnrQwQ4sbXDQSW0COuKdxx2DJJQs/a26C+">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "iBES5iFvAar4hsQXa3iEouaaDf5aoJw6JM7wvk+a5wSLJWhRqU6Hvmqtn3ZrzmsU">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "B3dIHm/Z1vLtBIvWZgBLcBSrwaDNu6kooemYjGEAyEfVSAtPePBTwzIutyhDE8ud">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "itStsKrFhnUQkQ7lQSGTHlzSJziWS4wc9TZGuNMUroQ1Te28lA50JQv3E0I19HlF">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "5QOMPxQkc8EzXqeyNTYHC7aFMVJn0IlGYNhp0su359eBpROyZtokqO7jwqfXMaZo">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "mO/RMTpP/j5DJiAExat1pf62W/5K8YGPomHlFuaVxBMbGkRsnmE/lPokCssriW/U">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "y6jB97rpKdCEISpsAAvcpUiFxm0596b8ceoAottEZQMVSc6uO2a6NQLGerycg+4b">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "oIJeRLYBWWyJBnnqsrQIPlhYbWsTYeBPtO2qExMstmE8wkAJ7P8blg7XGeUbdqX0">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "Xl7oTtyBHD5bpjAZ2k0eDZplusjLn8OMwld0iNzq3NF/P0+z48yaB038ibqvCj37">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "Y+BCaMexJJmX/5HqrJEV/kORNT42SKECAwEAATANBgkqhkiG9w0BAQ0FAAOCAgEA">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "dadCuvF5tE0WxSvRf95BsBvORQ85AyMquVZ2/2fVSxxbvS7ppcz9xam9zgkwI/R9">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "HkV3QvKApL/jiqK/oT5ri/h40Q1SHSAlAycxanfC6OHC2R57fOB907N5IthRUuT2">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "6zKbFJIJND1GGSq1TkgBs4avrZHsSiwvQEuIh5D49lPgXVXRAwPi+6K+bhPUTbTm">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "naGRCWBrKxOPaL/k1VX9iAhwt1dDxMxuJbI3FUI4czT+zqA+3y9mj06gK8mjd9NF">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "9XlfHljwwFC3G7LiLekJQxUDoEPJ6TjgEY9QpBcYeY2HRNY7V5mCRIelv+UMdFwL">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "K1O8cEaG1tjFdkhYoB2BKxwN30q41Ipq2JmnlKsun5sotM6sNTgEv3SHRZb6mfM2">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "03AoEQ1GW+238wjoXGqgv+3NG1pQbt9I3V+qts2eUl7GOGvB7aff2sX0OGTA+v/9">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "emVgzE6aAvkSjBeASJrCocTHJkcB7RYIG7cgIyElh4gvSPXRrQ3/veYivjKUJbJd">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "EB6/S9AC/T7rPgQU6qhlB24McaX08wH16QyJiw2AZkKM2jAp1EYBGB16Php6tjxm">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "DmqIHVVNlBAs2cv3OkO+SzrWkQkFjELL7LMHxi+L73k0jMWolZngvhfF0UZpAKXA">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "BdmlzhPA/CRxOg4GVEb/2SwA3CEfiP0tubX2Cx8TC1I=">> /var/lib/marzban-node/ssl_client_cert_myblog.pem
echo "-----END CERTIFICATE-----">> /var/lib/marzban-node/ssl_client_cert_myblog.pem

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
echo "  node-dag:" >> Marzban-node/docker-compose.yml
echo "    # build: ." >> Marzban-node/docker-compose.yml
echo "    image: gozargah/marzban-node:latest" >> Marzban-node/docker-compose.yml
echo "    restart: always" >> Marzban-node/docker-compose.yml
echo "    network_mode: host" >> Marzban-node/docker-compose.yml
echo "" >> Marzban-node/docker-compose.yml
echo "    environment:" >> Marzban-node/docker-compose.yml
echo "      SERVICE_PORT: $port3" >> Marzban-node/docker-compose.yml
echo "      XRAY_API_PORT: $port4" >> Marzban-node/docker-compose.yml
echo "      SSL_CLIENT_CERT_FILE: "/var/lib/marzban-node/ssl_client_cert_dag.pem"" >> Marzban-node/docker-compose.yml
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

update_node() {

input_num=1

read -r -p "Enter Starting Two Digits : " input_num

port1=$input_num
port2=$input_num
port3=$input_num
port4=$input_num
port5=$input_num
port6=$input_num

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
echo "  node-dag:" >> Marzban-node/docker-compose.yml
echo "    # build: ." >> Marzban-node/docker-compose.yml
echo "    image: gozargah/marzban-node:latest" >> Marzban-node/docker-compose.yml
echo "    restart: always" >> Marzban-node/docker-compose.yml
echo "    network_mode: host" >> Marzban-node/docker-compose.yml
echo "" >> Marzban-node/docker-compose.yml
echo "    environment:" >> Marzban-node/docker-compose.yml
echo "      SERVICE_PORT: $port3" >> Marzban-node/docker-compose.yml
echo "      XRAY_API_PORT: $port4" >> Marzban-node/docker-compose.yml
echo "      SSL_CLIENT_CERT_FILE: "/var/lib/marzban-node/ssl_client_cert_dag.pem"" >> Marzban-node/docker-compose.yml
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

echo "Select Operation :"
echo "1. Add Node"
echo "2. Update Node"
echo "3. Tunnel"
read -r -p "Select Number(Default is: 1):" COMMAND

case $COMMAND in
    1)  add_node
	echo
    echo "=== Finished ==="
    echo
    sleep 3
    exit ;;
    2)  update_node
    echo
    echo "=== Finished ==="
    echo
    sleep 3
    exit ;;
    *)   echo "Done."; exit 1 ;;

esac
