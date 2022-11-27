echo 'echo "hello world"' >.heroku/run.sh

cd .heroku
wget -q http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xf ta-lib-0.4.0-src.tar.gz
wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz
tar -xf Python-3.5.1.tgz
cd ta-lib
./configure --includedir=/app/.heroku/Python-3.5.1/include/ --libdir=/app/.heroku/Python-3.5.1/lib --bindir=/app/.heroku/Python-3.5.1/bin
make
make install
