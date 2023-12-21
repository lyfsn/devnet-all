



export IP_ADDRESS=78.46.91.61



export EL_BOOTNODES="enode://0cb8beb5eab41e16edf86dab869730d8e5a4acb110f5b0442fd93dff1acff565f88e8c78a2ea0089e0a3fa187595a81fa185f07a9f508b1f0617911abb985c31@78.46.91.61:50303"
export CL_BOOTNODES="enr:-LW4QP4ifA0Jij5ZA5UdjzzlyY3Z1So-J-JQhmva-hnSbid0Rp8SCDB_rxqQVGWTKJX-k62uB3x4M00afVQLBdfwjJQBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpDT1PoxQAAAOP__________gmlkgnY0hHF1aWOCKvmJc2VjcDI1NmsxoQPrWYZNVHNqtEKXesW2v9qqcyVbAgGPkzOpihKced7OgYhzeW5jbmV0cwCDdGNwgir4"



export PREFIX=geth-lighthouse-2



docker run -d --name ${PREFIX}-execution \
  -P \
  -p 10745:8545 \
  -p 10746:8546 \
  -p 10751:8551 \
  -p 12201:9001 \
  -p 50503:50503/udp \
  -p 50503:50503/tcp \
  -v $(pwd)/execution-data:/execution-data \
  -v $(pwd)/el-cl-genesis-data:/el-cl-genesis-data \
  --restart unless-stopped \
  ethpandaops/geth:master-5b57727 \
  --networkid=38356 \
  --state.scheme=path \
  --verbosity=3 \
  --datadir=/execution-data \
  --http \
  --http.addr=0.0.0.0 \
  --http.vhosts=* \
  --http.corsdomain=* \
  --http.api=admin,engine,net,eth,web3,debug \
  --http.port=8545 \
  --ws \
  --ws.addr=0.0.0.0 \
  --ws.port=8546 \
  --ws.api=admin,engine,net,eth,web3,debug \
  --ws.origins=* \
  --allow-insecure-unlock \
  --nat=extip:${IP_ADDRESS} \
  --verbosity=3 \
  --authrpc.port=8551 \
  --authrpc.addr=0.0.0.0 \
  --authrpc.vhosts=* \
  --authrpc.jwtsecret=/el-cl-genesis-data/jwt/jwtsecret \
  --syncmode=full \
  --rpc.allow-unprotected-txs \
  --metrics \
  --metrics.addr=0.0.0.0 \
  --metrics.port=9001 \
  --port=50503 \
  --discovery.port=50503 \
  --bootnodes=${EL_BOOTNODES}


docker run -d --name ${PREFIX}-beacon \
  -P \
  -p 11200:11200/udp \
  -p 11200:11200/tcp \
  -p 11201:11201/udp \
  -p 11201:11201/tcp \
  -p 4400:4000 \
  -p 7454:5054 \
  -v $(pwd)/consensus-data:/consensus-data \
  -v $(pwd)/el-cl-genesis-data:/el-cl-genesis-data \
  --restart unless-stopped \
  --user root \
  sigp/lighthouse:v4.5.0 \
  lighthouse beacon_node \
  --debug-level=info \
  --datadir=/consensus-data \
  --testnet-dir=/el-cl-genesis-data/custom_config_data \
  --listen-address=0.0.0.0 \
  --port=11200 \
  --quic-port=11201 \
  --http \
  --http-address=0.0.0.0 \
  --http-port=4000 \
  --execution-endpoints=http://${IP_ADDRESS}:10751 \
  --jwt-secrets=/el-cl-genesis-data/jwt/jwtsecret \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --subscribe-all-subnets \
  --import-all-attestations \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin=* \
  --metrics-port=5054 \
  --disable-peer-scoring \
  --boot-nodes=${CL_BOOTNODES}





