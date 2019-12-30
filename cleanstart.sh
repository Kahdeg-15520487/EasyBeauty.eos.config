
kill $(ps -ef | grep keosd | awk '{print $2}' | head -1)
kill $(ps -ef | grep nodeos | awk '{print $2}' | head -1)

rm -rf data-dir
mkdir data-dir
keosd --config=config.ini &
nodeos -e -p eosio --config-dir ./ --config config.ini --data-dir data-dir --filter-on "*" --access-control-allow-origin="*" --access-control-allow-headers="*" --contracts-console --http-validate-host=false --disable-replay-opts --verbose-http-errors >> nodeos.log 2>&1 &