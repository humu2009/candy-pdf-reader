# clear target directories
rm -rf ./bin/nw-packge/*
rm -rf ./bin/executable/linux32/*

# generate the nw package for node-webkit
zip -r ./bin/nw-packge/viewer.nw ./pdf.js/*

# build the main executable file by merging nw with the generated package
cat ./node-webkit/bin/linux32/nw ./bin/nw-packge/viewer.nw > ./bin/executable/linux32/creader
chmod +x ./bin/executable/linux32/creader

# also ship the required dependencies and copyright statements
cp ./node-webkit/bin/linux32/nw.pak ./bin/executable/linux32/
cp ./node-webkit/bin/linux32/libffmpegsumo.so ./bin/executable/linux32/
cp ./node-webkit/bin/linux32/credits.html ./bin/executable/linux32/nw-credits.html