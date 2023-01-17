# coqchain-setup

**`genesis.json` is the genesis file. `data` is the data directory.**

## Getting Started

1. install go,docker,docker-compose

2. build the docker image and `coq`

   ```shell
   git clone  https://github.com/Ankr-network/coqchain.git
   cd coqchain
   make all
   docker build -t coqchain:latest .
   docker build -f Dockerfile.faucet -t faucet:latest .
   ```

3. Initialize the network

   ```shell
   git clone https://github.com/Ankr-network/coqchain-setup.git
   cd coqchain-setup
   cp /path/to/coq .
   ./coq init ./genesis.json --datadir ./data/bootnode
   ./coq init ./genesis.json --datadir ./data/rpc
   ./coq init ./genesis.json --datadir ./data/validator_1
   ./coq init ./genesis.json --datadir ./data/validator_2
   ./coq init ./genesis.json --datadir ./data/validator_3
   ```
4. Start a local test network

   ```shell
   docker-compose up -d 
   ```
   
