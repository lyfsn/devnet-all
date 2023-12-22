/root/.cargo/bin/lighthouse bn \
  --debug-level=info \
  --datadir=./consensus-data \
  --testnet-dir=./el-cl-genesis-data/custom_config_data \
  --listen-address=0.0.0.0 \
  --port=11000 \
  --http \
  --http-address=0.0.0.0 \
  --http-port=4000 \
  --http-allow-sync-stalled \
  --slots-per-restore-point=32 \
  --disable-packet-filter \
  --execution-endpoints=http://127.0.0.1:8551 \
  --jwt-secrets=./el-cl-genesis-data/jwt/jwtsecret \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --subscribe-all-subnets \
  --import-all-attestations \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin=* \
  --metrics-port=5054 \
  --enable-private-discovery=true \
  --target-peers=16 \
  --enr-address=127.0.0.1  \
  --disable-peer-scoring \
  --enr-udp-port=11000 \
  --enr-tcp-port=11000 \
  
