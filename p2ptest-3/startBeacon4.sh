/root/.cargo/bin/lighthouse bn \
  --debug-level=info \
  --datadir=./consensus-data \
  --testnet-dir=./el-cl-genesis-data/custom_config_data \
  --listen-address=0.0.0.0 \
  --http \
  --http-address=0.0.0.0 \
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
  --target-peers=16 \
  --disable-peer-scoring \
  --boot-nodes=enr:-MW4QPV2FoTpWi7xYnQKkRKBQeLxJ_qubJfe9mlcikNqqwQ0Cc6lobaC_UdKTCsocRdpo298dBaz6Ldd8iz4VCO5HPuB04dhdHRuZXRziAAAAAAAAAAAhGV0aDKQ09T6MUAAADj__________4JpZIJ2NIJpcISVHDDghHF1aWOCIymJc2VjcDI1NmsxoQNUZxTsC5mu2fDGQZe2jk5VUytcMK1ErfMGGM27cva3m4hzeW5jbmV0cwCDdGNwgiMog3VkcIIjKQ \
  --enr-address=168.119.5.82  \
  --enr-udp-port=9001 \


  
