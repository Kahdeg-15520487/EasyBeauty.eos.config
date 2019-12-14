keosd --config=config.ini &
cleos wallet list
sudo cp /root/eosio-wallet/default.wallet ~/eosio-wallet/default.wallet
cleos wallet open
nodeos -e -p eosio --config-dir ./ --config config.ini --data-dir data-dir --filter-on "*" --access-control-allow-origin="*" --access-control-allow-headers="*" --contracts-console --http-validate-host=false --disable-replay-opts --verbose-http-errors 2>&1