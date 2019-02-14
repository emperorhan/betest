INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "00_CONFIG.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "00_CONFIG.conf" )"
TOKEN_AMOUNT="\"1000000000.0000 DAC\""

cleos system newaccount --stake-net "50000000.0000 CR" --stake-cpu "50000000.0000 CR" --buy-ram "100.0000 CR" eosio $INIT_ACCOUNT $INIT_PUB_KEY $INIT_PUB_KEY -p eosio

cleos transfer eosio $INIT_ACCOUNT "24989900.0000 CR" "init" -p eosio

cleos set contract $INIT_ACCOUNT /home/eos/eos/build/contracts/eosio.token

cleos push action $INIT_ACCOUNT create "[$INIT_ACCOUNT,$TOKEN_AMOUNT]" -p $INIT_ACCOUNT

cleos push action $INIT_ACCOUNT issue "[$INIT_ACCOUNT,$TOKEN_AMOUNT,issue DAPP token]" -p $INIT_ACCOUNT

cleos system regproducer $INIT_ACCOUNT $INIT_PUB_KEY "1.5000 DAC" https://ibct.io/ -p $INIT_ACCOUNT

cleos system delegatebw $INIT_ACCOUNT $INIT_ACCOUNT "1000000.0000 CR" "1000000.0000 CR"

cleos system voteproducer $INIT_ACCOUNT $INIT_ACCOUNT "1000.0000 CR"

cleos system listproducers