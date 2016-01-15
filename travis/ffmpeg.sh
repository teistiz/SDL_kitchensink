
if [ ! -d "$HOME/local" ]; then 
    wget https://www.ffmpeg.org/releases/ffmpeg-2.8.4.tar.gz -O ~/ffmpeg.tar.gz
    tar xzf ~/ffmpeg.tar.gz -C ~/
    cd ~/ffmpeg-2.8.4
    export CC=gcc-5
    ./configure --prefix=$HOME/local --disable-static --enable-shared --disable-doc
    make
    make install
else 
    echo 'Using cached FFmpeg build directory.';
fi