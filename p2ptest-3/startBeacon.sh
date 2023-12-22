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
  --boot-nodes=enr:-MS4QDuy1K75IAcq2WhtWYErmj0-tM4T_yw5F_TcC5jhzD42Bax_VTa8axmCfi016tzdbIEc3yz3h6fNj_w2ombfAexGh2F0dG5ldHOIAAAAAAAAAACEZXRoMpDT1PoxQAAAOP__________gmlkgnY0gmlwhH8AAAGEcXVpY4Iq-YlzZWNwMjU2azGhAsJm92CYcaHldTJM5guxl9dfM2GFWkjG4dFth8ObVkkBiHN5bmNuZXRzAIN0Y3CCKviDdWRwgir4 \
  --enr-address=127.0.0.1  \
  --disable-peer-scoring \
  --enr-udp-port=11031 \
  --enr-tcp-port=11031 \


