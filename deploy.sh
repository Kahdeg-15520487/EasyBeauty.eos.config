cleos wallet open
cleos wallet list
cat pw.txt | cleos wallet unlock

cleos -u http://localhost:9999 create account eosio "store.data" EOS7XH9Dko3roLPUbu83pfZcQQANFkCULHrMf6d8CiSHYwUjQhM4n -p eosio@active

cleos -u http://localhost:9999 set contract store.data ./store-data -p store.data@active
