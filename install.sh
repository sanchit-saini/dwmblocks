if [ ! -d "dwmblocks" ]; then
    git clone https://github.com/torrinfail/dwmblocks
    cd dwmblocks
else
    cd dwmblocks && git restore .
    rm -f blocks.h && make clean
fi

git apply ../patches/*.txt

sudo make install
