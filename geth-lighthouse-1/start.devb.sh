



export IP_ADDRESS=78.46.91.61







export EL_BOOTNODES="enode://0cb8beb5eab41e16edf86dab869730d8e5a4acb110f5b0442fd93dff1acff565f88e8c78a2ea0089e0a3fa187595a81fa185f07a9f508b1f0617911abb985c31@78.46.91.61:50303"
export CL_BOOTNODES="enr:-L24QDRWSfhnB6lvH-yDOPicKi8UE4G-ulkw-yjjGtWlPCXrOIac2FAybVVbwm4liCzmktPDNEkZda1zxuAkeYy_e8QCh2F0dG5ldHOIAAAAAAAAAACEZXRoMpDT1PoxQAAAOP__________gmlkgnY0gmlwhE4uWz2EcXVpY4Iq-YlzZWNwMjU2azGhA2r12MVqwD9iB7JfsmUpV8q0vC-lhAlDdAYqFY8VgHTtiHN5bmNuZXRzAIN0Y3CCKvg"




export PREFIX=geth-lighthouse-1




docker run -d --name ${PREFIX}-execution \
  -P \
  -p 10645:8545 \
  -p 10646:8546 \
  -p 10651:8551 \
  -p 12101:9001 \
  -p 50403:50403/udp \
  -p 50403:50403/tcp \
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
  --http.port=8545 \
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
  --port=50403 \
  --discovery.port=50403 \
  --bootnodes=${EL_BOOTNODES}


docker run -d --name ${PREFIX}-beacon \
  -P \
  -p 0.0.0.0:11100:11100/udp \
  -p 0.0.0.0:11100:11100/tcp \
  -p 0.0.0.0:11101:11101/udp \
  -p 0.0.0.0:11101:11101/tcp \
  -p 4300:5052 \
  -p 7354:5054 \
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
  --enr-address=${IP_ADDRESS} \
  --port=11100 \
  --quic-port=11101 \
  --http \
  --http-address=0.0.0.0 \
  --http-port=4000 \
  --execution-endpoints=http://${IP_ADDRESS}:10651 \
  --jwt-secrets=/el-cl-genesis-data/jwt/jwtsecret \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --subscribe-all-subnets \
  --import-all-attestations \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin="*" \
  --metrics-port=5054 \
  --disable-peer-scoring \
  --boot-nodes=${CL_BOOTNODES}







