
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
 --bootnodes=enode://a026723171b4f8eb7f98b3192d8ae8fc3905303e838622c3e0c793a904196c53b3f7f4f5e2a99ad598259519a7406a7a82cfb7f90473970e1f560280001ede8a@127.0.0.1:50303 \
 --nat=extip:127.0.0.1
