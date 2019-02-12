SOURCES_FOLDER="$( jq -r '.SOURCES_FOLDER' "00_CONFIG.conf" )"
ORI_CONTRACTS_FOLDER="$SOURCES_FOLDER/build/contracts"
BE_CONTRACTS_FOLDER="/home/eos/eos/contracts"

./cleos.sh set contract eosio $BE_CONTRACTS_FOLDER/eosio.system -p eosio
./cleos.sh push action eosio setpriv '["eosio.msig",1]' -p eosio
sleep 2s