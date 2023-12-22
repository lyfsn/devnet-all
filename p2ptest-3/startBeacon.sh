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
  --boot-nodes=enr:-MS4QChw3_f8rBPwJZ7X_IRAig5qsjjR7qj0wHozDZhKh8EnDwQsRbXoU-dj1vt0r3XMsdo_qYsb-DPF01jmTX83jdoBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpDT1PoxQAAAOP__________gmlkgnY0gmlwhE4uWz2EcXVpY4Iq-YlzZWNwMjU2azGhA7dqQbsFtH4lVftymB2zk41PiwBG76NdR7TIG_aiI5MriHN5bmNuZXRzAIN0Y3CCKvmDdWRwgir5 \
  --enr-address=78.46.91.61  \
  --disable-peer-scoring \
  --enr-udp-port=11032 \
  --enr-tcp-port=11032 \


