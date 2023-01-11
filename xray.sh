#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d71b5d90-eb59-443b-9103-6464df3e7b10"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

