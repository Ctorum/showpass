#!/bin/bash
#Verify if qrencode is installed
qrencode -V
Status=$?

{
if [ "${Status}" -ne "0" ]; then
brew install qrencode
fi
}


# Get the current SSID
SSID=$(networksetup -getairportnetwork en0 | awk -F': ' '{print $2}')

# Retrieve the password
PASSWORD=$(security find-generic-password -D "AirPort network password" -wa "$SSID")

# Retrieve the security type
SECURITY=$(sudo wdutil info | grep "Security" | awk -F: '{print $2}')

# Adjust the security type for the QR code
case "$SECURITY" in
  "WPA2 Personal") SECURITY="WPA";;
  "WEP") SECURITY="WEP";;
  "None") SECURITY="nopass";;
  *) SECURITY="WPA";;
esac

# Output network information
echo "SSID: $SSID"
echo "Password: $PASSWORD"
echo "Security: $SECURITY"

# Generate QR code for WiFi access
qrencode -t ANSIUTF8 "WIFI:T:$SECURITY;S:$SSID;P:$PASSWORD;;"