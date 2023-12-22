
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
 --http.port=8555 \
 --ws \
 --ws.addr=0.0.0.0 \
 --ws.port=8556 \
 --ws.api=admin,engine,net,eth,web3,debug \
 --ws.origins=* \
 --allow-insecure-unlock \
 --verbosity=3 \
 --authrpc.port=8562 \
 --authrpc.addr=0.0.0.0 \
 --authrpc.vhosts=* \
 --authrpc.jwtsecret=./el-cl-genesis-data/jwt/jwtsecret \
 --syncmode=full \
 --rpc.allow-unprotected-txs \
 --metrics \
 --metrics.addr=0.0.0.0 \
 --metrics.port=9002 \
 --port=50304 \
 --discovery.port=50304 \
 --bootnodes=enode://07696be61ce3ed55f367fe9131e47290123818456cb9981442e7fbeb2c51d6268e4b79582431f1298110d6692fa2ef2b9d966157fad26054e8d5e0b27c048584@127.0.0.1:50303