git clone https://github.com/CL-a11y/uCore-x86-32-config config
cd config && git checkout lab8 && cd ..
mkdir .github
cp -r config/classroom .github/
cp -r config/workflows .github/
cp  config/Makefile ./
cp  config/lab8.sh ./