#!/bin/bash
rm -r data/bootnode/coq/
rm -r data/bootnode/extenddb
rm -r data/rpc/coq/
rm -r data/rpc/extenddb 
rm -r data/validator_1/coq/
rm -r data/validator_1/extenddb
rm -r data/validator_2/coq/
rm -r data/validator_2/extenddb
rm -r data/validator_3/coq/
rm -r data/validator_3/extenddb

rm -r faucet/geth/
rm -r faucet/keys*

./coq init ./genesis.json --datadir ./data/bootnode/
./coq init ./genesis.json --datadir ./data/rpc/
./coq init ./genesis.json --datadir ./data/validator_1/
./coq init ./genesis.json --datadir ./data/validator_2/
./coq init ./genesis.json --datadir ./data/validator_3/
