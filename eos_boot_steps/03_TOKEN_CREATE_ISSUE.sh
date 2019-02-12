./cleos.sh push action eosio.token create '["eosio", "10000000000.0000 CR", 0, 0, 0]' -p eosio.token
sleep 2s
./cleos.sh push action eosio.token issue '["eosio",  "1000000000.0000 CR", "init"]' -p eosio
sleep 2s


