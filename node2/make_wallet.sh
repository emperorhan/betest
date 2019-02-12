PRIV_KEY="$( jq -r '.PRIV_KEY' "config.conf" )"

./cleos.sh wallet create --to-console
./cleos.sh wallet import --private-key $PRIV_KEY
