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
  --boot-nodes=enr:-MS4QABoxB422Se6Mb1K2lK11Wlrzg88bDEhQvczxhqFzg3eAZ7fvyz9BHW5NviPHjNYB7O6KY0jMRLlBdqeciFnd2EDh2F0dG5ldHOIAAAAAAAAAACEZXRoMpDT1PoxQAAAOP__________gmlkgnY0gmlwhE4uWz2EcXVpY4IjKYlzZWNwMjU2azGhAy8nf2_3QiNkfBblmd5CSH8jwXKKocVmComOdZmI-GNliHN5bmNuZXRzAIN0Y3CCIyiDdWRwgiMp \
  --enr-address=168.119.5.82  \
  --enr-udp-port=9001 \


  
