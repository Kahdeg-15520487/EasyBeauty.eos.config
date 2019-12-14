curl https://api.github.com/repos/Kahdeg-15520487/EasyBeauty.eos.contract/releases/latest | jq -r '.assets[].browser_download_url' | wget -i -
unzip -o store-data.zip -d ./store-data
rm store-data.zip

git clone https://github.com/Kahdeg-15520487/EasyBeauty.eos.interface.git