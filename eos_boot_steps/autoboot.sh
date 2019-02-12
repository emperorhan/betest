#!/bin/bash    
killall nodeos

sleep 1s

#unlock wallet
./00_WALLET_IMPORT.sh &> /dev/null

#run eosio node. see datadir for logs
/home/eos/eos/build/programs/nodeos/nodeos -e -p eosio --plugin eosio::producer_plugin --max-transaction-time=300 --plugin eosio::chain_api_plugin --plugin eosio::net_api_plugin --signature-provider=EOS7rjT9akyXh7upDay9nk9veD4sJcZQNfgL9NUhM3g61TcVGAoc7=KEY:5KKT5m2ZS443wDesNxJxhrEw7Yr73T3mxQWQoDEhTVjeQyoRwXG --genesis-json /home/eos/ibctprivate/genesis.json --delete-all-blocks > /home/eos/ibctprivate/stdout.txt 2> /home/eos/ibctprivate/stderr.txt & echo $! > /home/eos/ibctprivate/nodoes.pid

cd ../node
./start.sh

cd ../eos_boot_steps

#give time for the node to be initialized.
sleep 2s

#run booting sequences. sleep 1s between each sript for actions to get propagated
./01* 
./02*
./03*
#set contract setpriv might take too long so that it sometimes gets reject.
#there fore run in three times to make sure that the contract is set properly
#changes: in order to prevent transactions taking more than 30ms and being refused, eosio::producer_plugin --max-transaction-time=300 parameter has been added to eosio node
./04*



# ./05*
# ./06*

# cd ../node1
# ./start.sh

# cd ../node2
# ./start.sh

# cd ../node3
# ./start.sh

# cd ../node4
# ./start.sh

# cd ../node5
# ./start.sh

# cd ../node6
# ./start.sh

# cd ../node7
# ./start.sh

# cd ../eos_boot_steps

# ./07*
# ./08*

# cleos get info
#now manually shutdown eosio nodeos
