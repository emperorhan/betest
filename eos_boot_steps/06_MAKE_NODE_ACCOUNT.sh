ACCOUNT_77="$( jq -r '.ACCOUNT_77' "00_CONFIG.conf" )"
PUB_KEY_77="$( jq -r '.PUB_KEY_77' "00_CONFIG.conf" )"
PRIV_KEY_77="$( jq -r '.PRIV_KEY_77' "00_CONFIG.conf" )"

ACCOUNT_78="$( jq -r '.ACCOUNT_78' "00_CONFIG.conf" )"
PUB_KEY_78="$( jq -r '.PUB_KEY_78' "00_CONFIG.conf" )"
PRIV_KEY_78="$( jq -r '.PRIV_KEY_78' "00_CONFIG.conf" )"

ACCOUNT_79="$( jq -r '.ACCOUNT_79' "00_CONFIG.conf" )"
PUB_KEY_79="$( jq -r '.PUB_KEY_79' "00_CONFIG.conf" )"
PRIV_KEY_79="$( jq -r '.PRIV_KEY_79' "00_CONFIG.conf" )"

ACCOUNT_86="$( jq -r '.ACCOUNT_86' "00_CONFIG.conf" )"
PUB_KEY_86="$( jq -r '.PUB_KEY_86' "00_CONFIG.conf" )"
PRIV_KEY_86="$( jq -r '.PRIV_KEY_86' "00_CONFIG.conf" )"

ACCOUNT_87="$( jq -r '.ACCOUNT_87' "00_CONFIG.conf" )"
PUB_KEY_87="$( jq -r '.PUB_KEY_87' "00_CONFIG.conf" )"
PRIV_KEY_87="$( jq -r '.PRIV_KEY_87' "00_CONFIG.conf" )"

ACCOUNT_88="$( jq -r '.ACCOUNT_88' "00_CONFIG.conf" )"
PUB_KEY_88="$( jq -r '.PUB_KEY_88' "00_CONFIG.conf" )"
PRIV_KEY_88="$( jq -r '.PRIV_KEY_88' "00_CONFIG.conf" )"

ACCOUNT_80="$( jq -r '.ACCOUNT_80' "00_CONFIG.conf" )"
PUB_KEY_80="$( jq -r '.PUB_KEY_80' "00_CONFIG.conf" )"
PRIV_KEY_80="$( jq -r '.PRIV_KEY_80' "00_CONFIG.conf" )"

./cleos.sh system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $ACCOUNT_77 $PUB_KEY_77 $PUB_KEY_77 -p eosio

./cleos.sh system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $ACCOUNT_78 $PUB_KEY_78 $PUB_KEY_78 -p eosio

./cleos.sh system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $ACCOUNT_79 $PUB_KEY_79 $PUB_KEY_79 -p eosio

./cleos.sh system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $ACCOUNT_86 $PUB_KEY_86 $PUB_KEY_86 -p eosio

./cleos.sh system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $ACCOUNT_87 $PUB_KEY_87 $PUB_KEY_87 -p eosio

./cleos.sh system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $ACCOUNT_88 $PUB_KEY_88 $PUB_KEY_88 -p eosio

./cleos.sh system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $ACCOUNT_80 $PUB_KEY_80 $PUB_KEY_80 -p eosio

./cleos.sh transfer eosio $ACCOUNT_77 "24989900.0000 CR" "init" -p eosio
./cleos.sh transfer eosio $ACCOUNT_78 "24989900.0000 CR" "init" -p eosio
./cleos.sh transfer eosio $ACCOUNT_79 "24989900.0000 CR" "init" -p eosio
./cleos.sh transfer eosio $ACCOUNT_86 "24989900.0000 CR" "init" -p eosio
./cleos.sh transfer eosio $ACCOUNT_87 "24989900.0000 CR" "init" -p eosio
./cleos.sh transfer eosio $ACCOUNT_88 "24989900.0000 CR" "init" -p eosio
./cleos.sh transfer eosio $ACCOUNT_80 "24989900.0000 CR" "init" -p eosio