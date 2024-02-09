#!/bin/bash

COMMAND=1

add_node() {

#  sudo apt update && sudo apt upgrade -y;
#
#  sudo bash -c "$(curl -sL https://github.com/Gozargah/Marzban-scripts/raw/master/marzban.sh)" @ install;

  marzban down;

  rm -r /opt/marzban;
  mkdir /opt/marzban;

  rm -r /var/lib/marzban/certs;
  rm /var/lib/marzban/xray_config.json;
  rm /var/lib/marzban/db.sqlite3;

  mkdir /var/lib/marzban/certs;

  curl -o /opt/marzban/.env https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/opt/.env;

  curl -o /opt/marzban/docker-compose.yml https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/opt/docker-compose.yml;

  curl -o /var/lib/marzban/db.sqlite3 https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/var/db.sqlite3;

  curl -o /var/lib/marzban/xray_config.json https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/var/xray_config.json;

  echo "-----BEGIN CERTIFICATE-----">> /var/lib/marzban/certs/fullchain.pem
  echo "MIIEqjCCA5KgAwIBAgIUGhrD94Hj1BBC1AdK2t8fLT2c4YEwDQYJKoZIhvcNAQEL">> /var/lib/marzban/certs/fullchain.pem
  echo "BQAwgYsxCzAJBgNVBAYTAlVTMRkwFwYDVQQKExBDbG91ZEZsYXJlLCBJbmMuMTQw">> /var/lib/marzban/certs/fullchain.pem
  echo "MgYDVQQLEytDbG91ZEZsYXJlIE9yaWdpbiBTU0wgQ2VydGlmaWNhdGUgQXV0aG9y">> /var/lib/marzban/certs/fullchain.pem
  echo "aXR5MRYwFAYDVQQHEw1TYW4gRnJhbmNpc2NvMRMwEQYDVQQIEwpDYWxpZm9ybmlh">> /var/lib/marzban/certs/fullchain.pem
  echo "MB4XDTIzMDkxNjIxNDYwMFoXDTM4MDkxMjIxNDYwMFowYjEZMBcGA1UEChMQQ2xv">> /var/lib/marzban/certs/fullchain.pem
  echo "dWRGbGFyZSwgSW5jLjEdMBsGA1UECxMUQ2xvdWRGbGFyZSBPcmlnaW4gQ0ExJjAk">> /var/lib/marzban/certs/fullchain.pem
  echo "BgNVBAMTHUNsb3VkRmxhcmUgT3JpZ2luIENlcnRpZmljYXRlMIIBIjANBgkqhkiG">> /var/lib/marzban/certs/fullchain.pem
  echo "9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsf/laepzBof0sF5S35sMRve4nqHHTqO29fib">> /var/lib/marzban/certs/fullchain.pem
  echo "Q5q9EIWYfs1PEqHmAnhY6qGAtGLziX8n+Blkdw2aMugJFoAHlIs/sH9CLWPPvAKZ">> /var/lib/marzban/certs/fullchain.pem
  echo "fjs6ZlO38gpubWRHiIFJxJeBHvd4zee5pG3Ci5ITpoEn5ZWsLR0LQXtCfn/cAJlU">> /var/lib/marzban/certs/fullchain.pem
  echo "sDDJyAFzHM1q5gI1EHu5TkqhKoT/K0Rg/a0L82T1m5fwyh4hUa32LMSDk7QoATxo">> /var/lib/marzban/certs/fullchain.pem
  echo "d+V1Q88NX7PQDWxD4X5Vy2TCii69Lo8LCuQm5AwwE2b7wxR6PzQtqmuIAE6/0WG9">> /var/lib/marzban/certs/fullchain.pem
  echo "NlldZA+shexzD6qkwF6HzxUamovMXa54LTX3D2GoM5p5wfPqawIDAQABo4IBLDCC">> /var/lib/marzban/certs/fullchain.pem
  echo "ASgwDgYDVR0PAQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD">> /var/lib/marzban/certs/fullchain.pem
  echo "ATAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBShGZRkpb5LyANsxptsZtS1gC7OEDAf">> /var/lib/marzban/certs/fullchain.pem
  echo "BgNVHSMEGDAWgBQk6FNXXXw0QIep65TbuuEWePwppDBABggrBgEFBQcBAQQ0MDIw">> /var/lib/marzban/certs/fullchain.pem
  echo "MAYIKwYBBQUHMAGGJGh0dHA6Ly9vY3NwLmNsb3VkZmxhcmUuY29tL29yaWdpbl9j">> /var/lib/marzban/certs/fullchain.pem
  echo "YTAtBgNVHREEJjAkghEqLmludG9uYXR1cmUudGVjaIIPaW50b25hdHVyZS50ZWNo">> /var/lib/marzban/certs/fullchain.pem
  echo "MDgGA1UdHwQxMC8wLaAroCmGJ2h0dHA6Ly9jcmwuY2xvdWRmbGFyZS5jb20vb3Jp">> /var/lib/marzban/certs/fullchain.pem
  echo "Z2luX2NhLmNybDANBgkqhkiG9w0BAQsFAAOCAQEAjXCF23CB2OJNFpgWHGXGE8oI">> /var/lib/marzban/certs/fullchain.pem
  echo "KxOA0NvSOcy/+vnWMorRaJWtfBAZwjrBn/JKBd29SSkUdY96TJk98GwtTgzpDpYu">> /var/lib/marzban/certs/fullchain.pem
  echo "U+zSPrYpAWhNhP7Ls9RXjySujO92mOCTXnJNVDHABvLiyThD+7ndzT1B8y64qr0V">> /var/lib/marzban/certs/fullchain.pem
  echo "9oP+Nv0uejxAu2VNwvQpXHU6ej/IGhJQDbrJWmiSiVj3u/som+QbTRAAmzbcrm8x">> /var/lib/marzban/certs/fullchain.pem
  echo "WBCjCNesP4GSvGZ0eULc/4lud9XWFE32CTg87hYHZZPnN19lvSxCzbktaPvkiB0J">> /var/lib/marzban/certs/fullchain.pem
  echo "VpD5mYqqea7Et0oVI32QPGJsRE6tTVbm9om6ZuLVPuuBCszh5TDagOX2ve/PNg==">> /var/lib/marzban/certs/fullchain.pem
  echo "-----END CERTIFICATE-----">> /var/lib/marzban/certs/fullchain.pem

  echo "-----BEGIN PRIVATE KEY-----">> /var/lib/marzban/certs/key.pem
  echo "MIIEuwIBADANBgkqhkiG9w0BAQEFAASCBKUwggShAgEAAoIBAQCx/+Vp6nMGh/Sw">> /var/lib/marzban/certs/key.pem
  echo "XlLfmwxG97ieocdOo7b1+JtDmr0QhZh+zU8SoeYCeFjqoYC0YvOJfyf4GWR3DZoy">> /var/lib/marzban/certs/key.pem
  echo "6AkWgAeUiz+wf0ItY8+8Apl+OzpmU7fyCm5tZEeIgUnEl4Ee93jN57mkbcKLkhOm">> /var/lib/marzban/certs/key.pem
  echo "gSfllawtHQtBe0J+f9wAmVSwMMnIAXMczWrmAjUQe7lOSqEqhP8rRGD9rQvzZPWb">> /var/lib/marzban/certs/key.pem
  echo "l/DKHiFRrfYsxIOTtCgBPGh35XVDzw1fs9ANbEPhflXLZMKKLr0ujwsK5CbkDDAT">> /var/lib/marzban/certs/key.pem
  echo "ZvvDFHo/NC2qa4gATr/RYb02WV1kD6yF7HMPqqTAXofPFRqai8xdrngtNfcPYagz">> /var/lib/marzban/certs/key.pem
  echo "mnnB8+prAgMBAAECggEAClmmgPzzz09pUdAXFY8YeamLf+RJIjBKDtqnFjLebe8d">> /var/lib/marzban/certs/key.pem
  echo "KbjNsXgRV3EHPccPJG4UjZkDo/a/oF4w6mdGEAISofdiFRgK3kTNhLf9LbMX93Dd">> /var/lib/marzban/certs/key.pem
  echo "/O8D8mYNJ5ZzY0EQ1J7wB792GTLHFM9brfTlcwFVaUVYRputbcAIwbT1kOeYjbUF">> /var/lib/marzban/certs/key.pem
  echo "T1J4SZ5nE10uR/RCrew1ld5xOaW1aZl3cZyVG3PCUtQAYn8DZbJRAEnb/Gwls90Q">> /var/lib/marzban/certs/key.pem
  echo "CuqYF6Si/ogDc+CBZA9zb2gTJutv3X8tu6DdPD7ij5E2UROlYSHTWonnxhPgfei2">> /var/lib/marzban/certs/key.pem
  echo "VlSU/1RN/j7oTogkDyTfWia2Oi7IwP4kR95sHKL7UQKBgQDtHmPMBiB6jpVJQEQw">> /var/lib/marzban/certs/key.pem
  echo "PBkQ4MqqG4I9by4sW/N035sXUjmR3PvWY3ZHyg4R1TARr4wSdY+COPNWJ3gKc05C">> /var/lib/marzban/certs/key.pem
  echo "Ehr4K5MZfQQ0BeWEdCfCwHqoS2Hs0S5zLaRuY35OPsK+hxEBPme1WM+tyXFGp81C">> /var/lib/marzban/certs/key.pem
  echo "CcFrxj50UdVvtg1uuGW1wuUyzwKBgQDALGB0+gjcHKIMSYIPFOv6MIQlv0eYT3X/">> /var/lib/marzban/certs/key.pem
  echo "S1tEGki3mUvQ1klsMYz9reSc4mJEweQT/JYWs50pYeaPjM/F1r2ukg0oQB/Sc85e">> /var/lib/marzban/certs/key.pem
  echo "zCKZzjiglj6vgsUt3j8R9ly8Ky1h4WbAMhFEjxRTeKc36611kS9MXpnhq7GW3lWC">> /var/lib/marzban/certs/key.pem
  echo "aJBsg4nlpQKBgQC2579BbOR2xS+AvpMaxfDr5QpPp0KSkwWB8DfeynE+zw1bZ6PX">> /var/lib/marzban/certs/key.pem
  echo "XwepHsI1nUYkDk61Gnvljnqd1XoyTXlrW73z+uDQQ3APlRDTWConfwPed6+E1mLH">> /var/lib/marzban/certs/key.pem
  echo "M8jn4dVXE/ByuYszc2jaKTShsIaxYtThANdzhAs+/LTwI/U+l/zU9Q6JXwJ/DAK6">> /var/lib/marzban/certs/key.pem
  echo "BJWb+CXR+vKdLlQga4Kcv780ulA9D7el/Jun79Gk62h5LknqhfBYWXXMrn9vwdAH">> /var/lib/marzban/certs/key.pem
  echo "kWOobu2ve0lRswu4zzBRojJfysdyHnqjrvk0kNTTFiUWLce2KWk8YoZQT83GnjyC">> /var/lib/marzban/certs/key.pem
  echo "18YZfx4LVXNlY/OvARbohzIz5zn+Hihq3l1aQQKBgHlxZPFGCNWYABr9wYIUzcbo">> /var/lib/marzban/certs/key.pem
  echo "u0PBhiQfS0p7PNFPwkARWfNvZZD8BygVsDi9e4d+bxfTfYX132H0ldQMkuEPo9OL">> /var/lib/marzban/certs/key.pem
  echo "axW+S1aSEJ+CqJvy2PH251EEnfDTWmt3P2gzJQan0Hkk0jQpaxNWYg8VQaSgUW7y">> /var/lib/marzban/certs/key.pem
  echo "CTUBIcnyljKqReByqQZY">> /var/lib/marzban/certs/key.pem
  echo "-----END PRIVATE KEY-----">> /var/lib/marzban/certs/key.pem

  marzban up;

}

add_node



esac
