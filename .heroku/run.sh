echo 'echo "hello world"' >.heroku/run.sh

cd .heroku
wget -q http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xf ta-lib-0.4.0-src.tar.gz
wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz
tar -xf Python-3.10.8.tgz
mv Python-3.10.8 python
cd python
mv Python python
cd ..
cd ta-lib
./configure --includedir=/app/.heroku/python/include/ --libdir=/app/.heroku/python/lib --bindir=/app/.heroku/python/bin
make
make install
cd ..
cd ..
