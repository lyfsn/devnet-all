



lighthouse bn \
  --debug-level=info \
  --datadir=./consensus-data \
  --testnet-dir=./el-cl-genesis-data/custom_config_data \
  --listen-address=0.0.0.0 \
  --http \
  --http-address=0.0.0.0 \
  --execution-endpoints=http://127.0.0.1:8551 \
  --jwt-secrets=./el-cl-genesis-data/jwt/jwtsecret \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --subscribe-all-subnets \
  --import-all-attestations \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin=* 