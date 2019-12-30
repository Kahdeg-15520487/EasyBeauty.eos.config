rm -rf ~/eosio-wallet/default.wallet

cleos wallet create --file pw.txt

cleos wallet open
cleos wallet list
cat pw.txt | cleos wallet unlock

cat pk1.txt | cleos wallet import --private-key
cat pk2.txt | cleos wallet import --private-key