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
  --boot-nodes=enr:-Ma4QDNJWfkbYTbSIEBrfb0XMtUqUmYFhoXaj2Bxn05m0fY_XBL-xd6bOTzhQZ3ynpYScH27u6ixLY1UIh8yCOa-euOCAaOHYXR0bmV0c4gAAAAAAAAAAIRldGgykNPU-jFAAAA4__________-CaWSCdjSCaXCElRww4IRxdWljgiMpiXNlY3AyNTZrMaEDVGcU7AuZrtnwxkGXto5OVVMrXDCtRK3zBhjNu3L2t5uIc3luY25ldHMAg3RjcIIjKIN1ZHCCIyg \
  --enr-address=168.119.5.82  \
  --enr-udp-port=9000 \


  
