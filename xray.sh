#!/bin/sh
if [ ! -f UUID ]; then
  UUID="29f2cfe8-2cfd-45b2-bde8-d4f9ef1a9d13"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

