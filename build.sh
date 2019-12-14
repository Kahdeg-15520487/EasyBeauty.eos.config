cd store-data

eosio-cpp -abigen -I ./include -R ./resource -contract store.data -o store-data.wasm src/store-data.cpp