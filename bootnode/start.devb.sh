



export IP_ADDRESS=78.46.91.61





export PREFIX=bootnode




docker run -d --name ${PREFIX}-execution \
  -P \
  -p 10545:8545 \
  -p 10546:8546 \
  -p 10551:8551 \
  -p 12001:9001 \
  -p 50303:50303/udp \
  -p 50303:50303/tcp \
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
  --http.vhosts="*" \
  --http.corsdomain="*" \
  --http.api=admin,engine,net,eth,web3,debug \
  --ws \
  --ws.addr=0.0.0.0 \
  --ws.port=8546 \
  --ws.api=admin,engine,net,eth,web3,debug \
  --ws.origins="*" \
  --allow-insecure-unlock \
  --nat=extip:${IP_ADDRESS} \
  --verbosity=3 \
  --authrpc.port=8551 \
  --authrpc.addr=0.0.0.0 \
  --authrpc.vhosts="*" \
  --authrpc.jwtsecret=/el-cl-genesis-data/jwt/jwtsecret \
  --syncmode=full \
  --rpc.allow-unprotected-txs \
  --metrics \
  --metrics.addr=0.0.0.0 \
  --metrics.port=9001 \
  --port=50303 \
  --discovery.port=50303


docker run -d --name ${PREFIX}-beacon \
  -P \
  -p 11000:11000/udp \
  -p 11000:11000/tcp \
  -p 11001:11001/udp \
  -p 11001:11001/tcp \
  -p 4200:4000 \
  -p 7054:5054 \
  -v $(pwd)/consensus-data:/consensus-data \
  -v $(pwd)/el-cl-genesis-data:/el-cl-genesis-data \
  --restart unless-stopped \
  ethpandaops/lighthouse:proposer-signature-cache-c59fa34 \
  lighthouse beacon_node \
  --debug-level=info \
  --datadir=/consensus-data \
  --testnet-dir=/el-cl-genesis-data/custom_config_data \
  --disable-enr-auto-update \
  --enr-address=${IP_ADDRESS} \
  --enr-udp-port=11000 \
  --enr-tcp-port=11000 \
  --enr-quic-port=11001 \
  --listen-address=0.0.0.0 \
  --port=11000 \
  --http \
  --http-address=0.0.0.0 \
  --http-port=4000 \
  --http-allow-sync-stalled \
  --slots-per-restore-point=32 \
  --disable-packet-filter \
  --execution-endpoints=http://${IP_ADDRESS}:10551 \
  --jwt-secrets=/el-cl-genesis-data/jwt/jwtsecret \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --subscribe-all-subnets \
  --import-all-attestations \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin="*" \
  --metrics-port=5054 \
  --enable-private-discovery=true \
  --target-peers=16


docker run -d --name ${PREFIX}-validator \
  -p 7042:5042 \
  -p 7064:5064 \
  -v $(pwd)/el-cl-genesis-data:/el-cl-genesis-data \
  -v $(pwd)/validator_keys:/validator_keys \
  --restart unless-stopped \
  ethpandaops/lighthouse:proposer-signature-cache-c59fa34 \
  lighthouse validator_client \
  --debug-level=info \
  --testnet-dir=/el-cl-genesis-data/custom_config_data \
  --validators-dir=/validator_keys \
  --init-slashing-protection \
  --http \
  --unencrypted-http-transport \
  --http-address=0.0.0.0 \
  --http-port=5042 \
  --beacon-nodes=http://${IP_ADDRESS}:4200 \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin=* \
  --metrics-port=5064






