



./geth \
  --networkid=38256 \
  --state.scheme=path \
  --verbosity=3 \
  --datadir=./execution-data \
  --http \
  --http.addr=0.0.0.0 \
  --http.vhosts=* \
  --http.corsdomain=* \
  --http.api=admin,engine,net,eth,web3,debug \
  --ws \
  --ws.addr=0.0.0.0 \
  --ws.api=admin,engine,net,eth,web3,debug \
  --ws.origins=* \
  --allow-insecure-unlock \
  --nat=extip:127.0.0.1 \
  --verbosity=3 \
  --authrpc.addr=0.0.0.0 \
  --authrpc.vhosts=* \
  --authrpc.jwtsecret=./el-cl-genesis-data/jwt/jwtsecret \
  --syncmode=full \
  --rpc.allow-unprotected-txs \
  --metrics \
  --metrics.addr=0.0.0.0

