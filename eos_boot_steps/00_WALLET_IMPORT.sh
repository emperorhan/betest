WALLET_PASS="$( jq -r '.WALLET_PASSWD' "00_CONFIG.conf" )"
EOSIO_PRIV="$( jq -r '.EOSIO_PRODUCER_PRIV_KEY' "00_CONFIG.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "00_CONFIG.conf" )"
PRIV_KEY_77="$( jq -r '.PRIV_KEY_77' "00_CONFIG.conf" )"
PRIV_KEY_78="$( jq -r '.PRIV_KEY_78' "00_CONFIG.conf" )"
PRIV_KEY_79="$( jq -r '.PRIV_KEY_79' "00_CONFIG.conf" )"
PRIV_KEY_86="$( jq -r '.PRIV_KEY_86' "00_CONFIG.conf" )"
PRIV_KEY_87="$( jq -r '.PRIV_KEY_87' "00_CONFIG.conf" )"
PRIV_KEY_88="$( jq -r '.PRIV_KEY_88' "00_CONFIG.conf" )"
PRIV_KEY_80="$( jq -r '.PRIV_KEY_80' "00_CONFIG.conf" )"

./cleos.sh wallet unlock --password $WALLET_PASS

./cleos.sh wallet import --private-key $EOSIO_PRIV
./cleos.sh wallet import --private-key $INIT_PRIV_KEY
./cleos.sh wallet import --private-key $PRIV_KEY_77
./cleos.sh wallet import --private-key $PRIV_KEY_78
./cleos.sh wallet import --private-key $PRIV_KEY_79
./cleos.sh wallet import --private-key $PRIV_KEY_86
./cleos.sh wallet import --private-key $PRIV_KEY_87
./cleos.sh wallet import --private-key $PRIV_KEY_88
./cleos.sh wallet import --private-key $PRIV_KEY_80


