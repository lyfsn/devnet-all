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
  --boot-nodes=enr:-Le4QGWdPUgA6CqaS0KMGPglLjhnqB6MJ7ZDtXTZmzEp-EbybuBwKvuk_619S_1yUt4iweZHSapcz6rxk8XIDDq_baeCAeiHYXR0bmV0c4gAAAAAAAAAAIRldGgykNPU-jFAAAA4__________-CaWSCdjSEcXVpY4IjKYlzZWNwMjU2azGhA1RnFOwLma7Z8MZBl7aOTlVTK1wwrUSt8wYYzbty9rebiHN5bmNuZXRzAIN0Y3CCIyg \
  # --enr-address=78.46.91.61  \
  # --enr-udp-port=9000 \

