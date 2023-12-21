



export IP_ADDRESS=78.46.91.61



export EL_BOOTNODES="enode://ab858f77cd051e7fa8d6eb0127b57ebd70aded47b3d2f6068da51d13ea0e2e58fadce24f743211bdb3e53234c8c8fea6aaab055db5ab5a0dd0193093557254a4@78.46.91.61:50303"
export CL_BOOTNODES="enr:-MS4QPG8EMbUF28j29wKeQ1GIKfvuxTzweo4grk3A24vVJeqNRC-I2eEkF5aH4AcykkcmeQW7Ku3ihWQHK12wfJ3zAkBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpDT1PoxQAAAOP__________gmlkgnY0gmlwhE4uWz2EcXVpY4Iq-YlzZWNwMjU2azGhAkChA3oFhPJDYjgDbbUG2IecOjC38OD0QavX7c_ijnt0iHN5bmNuZXRzAIN0Y3CCKviDdWRwgir4"



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
  --disable-enr-auto-update \
  --enr-address=${IP_ADDRESS} \
  --enr-udp-port=11200 \
  --enr-tcp-port=11200 \
  --enr-quic-port=11201 \
  --listen-address=0.0.0.0 \
  --port=11200 \
  --http \
  --http-address=0.0.0.0 \
  --http-port=4000 \
  --http-allow-sync-stalled \
  --slots-per-restore-point=32 \
  --disable-packet-filter \
  --execution-endpoints=http://${IP_ADDRESS}:10751 \
  --jwt-secrets=/el-cl-genesis-data/jwt/jwtsecret \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --subscribe-all-subnets \
  --import-all-attestations \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin=* \
  --metrics-port=5054 \
  --enable-private-discovery=true \
  --target-peers=16 \
  --boot-nodes=${CL_BOOTNODES}





