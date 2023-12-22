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
  --boot-nodes=enr:-La4QF5Vc1j5_HWyzCa3CErDg_4ZM1QxWYgKOYyWSS7gQxBKPOAUpvZa3KgopBgWLEdHYOSSxDsHpIZQQ4e2GL3D762B0YdhdHRuZXRziAAAAAAAAAAAhGV0aDKQ09T6MUAAADj__________4JpZIJ2NIRxdWljgiMpiXNlY3AyNTZrMaEDVGcU7AuZrtnwxkGXto5OVVMrXDCtRK3zBhjNu3L2t5uIc3luY25ldHMAg3RjcIIjKA \
  --enr-address=168.119.5.82  \

  
