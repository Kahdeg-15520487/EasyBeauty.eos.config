rm -rf ~/eosio-wallet/default.wallet

cleos wallet create --file pw.txt

cleos wallet open
cleos wallet list
cat pw.txt | cleos wallet unlock

cat pk1.txt | cleos wallet import --private-key
cat pk2.txt | cleos wallet import --private-key

mkdir data-dir
keosd --config=config.ini &
nodeos -e -p eosio --config-dir ./ --config config.ini --data-dir data-dir --filter-on "*" --access-control-allow-origin="*" --access-control-allow-headers="*" --contracts-console --http-validate-host=false --disable-replay-opts --verbose-http-errors >> nodeos.log 2>&1 &

sleep 5s

cleos -u http://localhost:9999 create account eosio "store.data" EOS7XH9Dko3roLPUbu83pfZcQQANFkCULHrMf6d8CiSHYwUjQhM4n -p eosio@active

cleos -u http://localhost:9999 set contract store.data ./store-data -p store.data@active

sleep 5s

kill $(ps -ef | grep keosd | awk '{print $2}' | head -1)
nodeospid=$(ps -ef | grep nodeos | awk '{print $2}' | head -1)
kill $nodeospid
tail --pid=$nodeospid -f /dev/null
