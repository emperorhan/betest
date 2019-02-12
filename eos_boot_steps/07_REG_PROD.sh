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

./cleos.sh system regproducer $ACCOUNT_77 $PUB_KEY_77 https://ibct.io/ -p $ACCOUNT_77
./cleos.sh system delegatebw $ACCOUNT_77 $ACCOUNT_77 "1000000.0000 CR" "1000000.0000 CR"
./cleos.sh system voteproducer $ACCOUNT_77 $ACCOUNT_77 "1000.0000 CR"
./cleos.sh system listproducers

./cleos.sh system regproducer $ACCOUNT_78 $PUB_KEY_78 https://ibct.io/ -p $ACCOUNT_78
./cleos.sh system delegatebw $ACCOUNT_78 $ACCOUNT_78 "1000000.0000 CR" "1000000.0000 CR"
./cleos.sh system voteproducer $ACCOUNT_78 $ACCOUNT_78 "1000.0000 CR"
./cleos.sh system listproducers

./cleos.sh system regproducer $ACCOUNT_79 $PUB_KEY_79 https://ibct.io/ -p $ACCOUNT_79
./cleos.sh system delegatebw $ACCOUNT_79 $ACCOUNT_79 "1000000.0000 CR" "1000000.0000 CR"
./cleos.sh system voteproducer $ACCOUNT_79 $ACCOUNT_79 "1000.0000 CR"
./cleos.sh system listproducers

./cleos.sh system regproducer $ACCOUNT_86 $PUB_KEY_86 https://ibct.io/ -p $ACCOUNT_86
./cleos.sh system delegatebw $ACCOUNT_86 $ACCOUNT_86 "1000000.0000 CR" "1000000.0000 CR"
./cleos.sh system voteproducer $ACCOUNT_86 $ACCOUNT_86 "1000.0000 CR"
./cleos.sh system listproducers

./cleos.sh system regproducer $ACCOUNT_87 $PUB_KEY_87 https://ibct.io/ -p $ACCOUNT_87
./cleos.sh system delegatebw $ACCOUNT_87 $ACCOUNT_87 "1000000.0000 CR" "1000000.0000 CR"
./cleos.sh system voteproducer $ACCOUNT_87 $ACCOUNT_87 "1000.0000 CR"
./cleos.sh system listproducers

./cleos.sh system regproducer $ACCOUNT_88 $PUB_KEY_88 https://ibct.io/ -p $ACCOUNT_88
./cleos.sh system delegatebw $ACCOUNT_88 $ACCOUNT_88 "1000000.0000 CR" "1000000.0000 CR"
./cleos.sh system voteproducer $ACCOUNT_88 $ACCOUNT_88 "1000.0000 CR"
./cleos.sh system listproducers

./cleos.sh system regproducer $ACCOUNT_80 $PUB_KEY_80 https://ibct.io/ -p $ACCOUNT_80
./cleos.sh system delegatebw $ACCOUNT_80 $ACCOUNT_80 "1000000.0000 CR" "1000000.0000 CR"
./cleos.sh system voteproducer $ACCOUNT_80 $ACCOUNT_80 "1000.0000 CR"
./cleos.sh system listproducers
