git clone https://github.com/CL-a11y/uCore-x86-32-config config
cd config && git checkout lab5 && cd ..
mkdir .github
cp -r config/classroom .github/
cp -r config/workflows .github/
cp  config/Makefile ./
cp  config/lab5.sh ./