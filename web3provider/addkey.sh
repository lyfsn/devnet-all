




curl \
  -X POST http://127.0.0.1:9000/eth/v1/keystores \
  --header "Content-Type: application/json" \
  --data '{
  "keystores": [
    "{\"crypto\": {\"kdf\": {\"function\": \"scrypt\", \"params\": {\"dklen\": 32, \"n\": 262144, \"r\": 8, \"p\": 1, \"salt\": \"81bfeb82ea4f7174ef375d80e84065b4b4aa38599d1940ab60e59d678a1c1ecb\"}, \"message\": \"\"}, \"checksum\": {\"function\": \"sha256\", \"params\": {}, \"message\": \"ab153aeb7e9f66c8231f7663b9db6b75cd64b14620d81120ac0f35ad9843450c\"}, \"cipher\": {\"function\": \"aes-128-ctr\", \"params\": {\"iv\": \"3071683526fdd51e31772262b39efe7d\"}, \"message\": \"a15537414776073bae85e9d9bb36e3f5117462faaf51ef87b30683bafafa8ef1\"}}, \"description\": \"\", \"pubkey\": \"855681e2f453259b0e507a9f935ad48f5f5faf9299799c91d3180b0e29210c4e13c74ef4ecb32278b395ecf01aa7fb32\", \"path\": \"m/12381/3600/0/0/0\", \"uuid\": \"68555766-70c1-4c94-a38e-f0c0fa6eaea6\", \"version\": 4}"
  ],
  "passwords": [
    "12345678"
  ],
    "slashing_protection": "{\"metadata\":{\"interchange_format_version\":\"5\",\"genesis_validators_root\":\"0xd61ea484febacfae5298d52a2b581f3e305a51f3112a9241b968dccf019f7b11\"},\"data\":[{\"pubkey\":\"855681e2f453259b0e507a9f935ad48f5f5faf9299799c91d3180b0e29210c4e13c74ef4ecb32278b395ecf01aa7fb32\",\"signed_blocks\":[],\"signed_attestations\":[]}]}"
  }'


  