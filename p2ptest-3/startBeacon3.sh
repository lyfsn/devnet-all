/root/.cargo/bin/lighthouse bn \
  --debug-level=trace \
  --datadir=./consensus-data \
  --testnet-dir=./el-cl-genesis-data/custom_config_data \
  --listen-address=0.0.0.0 \
  --port=11031 \
  --http \
  --http-address=0.0.0.0 \
  --http-port=5131 \
  --http-allow-sync-stalled \
  --slots-per-restore-point=32 \
  --disable-packet-filter \
  --execution-endpoints=http://127.0.0.1:8572 \
  --jwt-secrets=./el-cl-genesis-data/jwt/jwtsecret \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --subscribe-all-subnets \
  --import-all-attestations \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin=* \
  --metrics-port=5184 \
  --enable-private-discovery=true \
  --target-peers=16 \
  --boot-nodes=enr:-L64QFc-NSEi8ykhNgW2QV_cCGba6-PaOBb5_EfVuaLv8C6wC5Zv3KFIziB9DApzI6poD8Uzk1vJT9gxWXJtgmZLYASCAV2HYXR0bmV0c4gAAAAAAAAAAIRldGgykNPU-jFAAAA4__________-CaWSCdjSEcXVpY4Iq-YlzZWNwMjU2azGhA1RnFOwLma7Z8MZBl7aOTlVTK1wwrUSt8wYYzbty9rebiHN5bmNuZXRzAIN0Y3CCKvmDdWRwgir5 \
  --disable-peer-scoring \
  --enr-udp-port=11032 \
  --enr-tcp-port=11032 \


