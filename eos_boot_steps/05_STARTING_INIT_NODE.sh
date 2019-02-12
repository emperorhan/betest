INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "00_CONFIG.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "00_CONFIG.conf" )"
TOKEN_AMOUNT="10000000000.0000 "
TOKEN_SYMBOL="DAC"

# ./cleos.sh system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $INIT_ACCOUNT $INIT_PUB_KEY $INIT_PUB_KEY -p eosio

# ./cleos.sh transfer eosio $INIT_ACCOUNT "24989900.0000 CR" "init" -p eosio

# ./cleos.sh set contract $INIT_ACCOUNT /home/eos/eos/build/contracts/eosio.token

# ./cleos.sh push action $INIT_ACCOUNT create '{"issuer":'+$INIT_ACCOUNT+',"maximum_supply":'+$TOKEN_AMOUNT+$TOKEN_SYMBOL'}' -p $INIT_ACCOUNT

# ./cleos.sh push action $INIT_ACCOUNT issue '{"to":'+$INIT_ACCOUNT+',"quantity":'+$TOKEN_AMOUNT+$TOKEN_SYMBOL',"memo":"issue DAPP token"}' -p $INIT_ACCOUNT

./cleos.sh system regproducer $INIT_ACCOUNT $INIT_PUB_KEY "1.5000 CR" DAC https://ibct.io/ -p $INIT_ACCOUNT

# ./cleos.sh system delegatebw $INIT_ACCOUNT $INIT_ACCOUNT "1000000.0000 CR" "1000000.0000 CR"

# ./cleos.sh system voteproducer $INIT_ACCOUNT $INIT_ACCOUNT "1000.0000 CR"

# ./cleos.sh system listproducers