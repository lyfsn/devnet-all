/root/.cargo/bin/lighthouse bn \
  --debug-level=info \
  --datadir=./consensus-data \
  --testnet-dir=./el-cl-genesis-data/custom_config_data \
  --disable-enr-auto-update \
  --enr-address=127.0.0.1 \
  --enr-udp-port=11011 \
  --enr-tcp-port=11011 \
  --listen-address=0.0.0.0 \
  --port=11011 \
  --http \
  --http-address=0.0.0.0 \
  --http-port=5111 \
  --http-allow-sync-stalled \
  --slots-per-restore-point=32 \
  --disable-packet-filter \
  --execution-endpoints=http://127.0.0.1:8562 \
  --jwt-secrets=./el-cl-genesis-data/jwt/jwtsecret \
  --suggested-fee-recipient=0x8943545177806ED17B9F23F0a21ee5948eCaa776 \
  --subscribe-all-subnets \
  --import-all-attestations \
  --metrics \
  --metrics-address=0.0.0.0 \
  --metrics-allow-origin=* \
  --metrics-port=5164 \
  --enable-private-discovery=true \
  --target-peers=16 \
  --boot-nodes=enr:-MS4QFCJS90zj2Cgl0DvcWghk5j8nUomiqFEhX4aNeun96y0WFYFtQzzI3xiI8x6rRauzldux3tJo1bZP2Ojh3k7RIYBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpAjvkwgQAAAOP__________gmlkgnY0gmlwhH8AAAGEcXVpY4Iq-YlzZWNwMjU2azGhAyYmeLHeivTX8Aw1dUkNinCoggNWvM71M1MvniKRoJAaiHN5bmNuZXRzAIN0Y3CCKviDdWRwgir4