echo 'echo "hello world"' >.heroku/run.sh

cd .heroku
wget -q http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xf ta-lib-0.4.0-src.tar.gz
wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz
tar -xf Python-3.10.8.tgz
# mv Python-3.10.8 python
cd ta-lib
./configure --includedir=/app/.heroku/Python-3.10.8/include/ --libdir=/app/.heroku/Python-3.10.8/lib --bindir=/app/.heroku/Python-3.10.8/bin
make
make install
cd ..
cd ..
