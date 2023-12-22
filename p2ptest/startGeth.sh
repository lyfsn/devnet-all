
./geth \
 --networkid=38356 \
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
 --ws.port=8546 \
 --ws.api=admin,engine,net,eth,web3,debug \
 --ws.origins=* \
 --allow-insecure-unlock \
 --verbosity=3 \
 --authrpc.port=8551 \
 --authrpc.addr=0.0.0.0 \
 --authrpc.vhosts=* \
 --authrpc.jwtsecret=./el-cl-genesis-data/jwt/jwtsecret \
 --syncmode=full \
 --rpc.allow-unprotected-txs \
 --metrics \
 --metrics.addr=0.0.0.0 \
 --metrics.port=9001 \
 --port=50303 \
 --discovery.port=50303 \
 --nat=extip:168.119.5.82