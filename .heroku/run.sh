echo 'echo "hello world"' >.heroku/run.sh
cd freqtrade
./build_helpers/install_ta-lib.sh
./setup.sh -i
freqtrade create-userdir --userdir user_data


