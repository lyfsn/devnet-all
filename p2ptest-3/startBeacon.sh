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
  --boot-nodes=enr:-L24QPk7u-tKTBEWK1UlcRQvUX0hg-d4Dc2NloPlKQhZ1RG0Rg827ikdygKaLU5hrT4kIvmTVd0pHFvR-BcmEWVqH4hHh2F0dG5ldHOIAAAAAAAAAACEZXRoMpDT1PoxQAAAOP__________gmlkgnY0gmlwhKh3BVKEcXVpY4Iq-YlzZWNwMjU2azGhAyXOfXgViKoRH61Uk46IH6eX1nekut4SDVJtPYfbL9c9iHN5bmNuZXRzAIN0Y3CCKvg \
  --enr-address=78.46.91.61  \
  --disable-peer-scoring \
  --enr-udp-port=11032 \
  --enr-tcp-port=11032 \


