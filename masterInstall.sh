    sed -i 's/\r$//' masterInstall.sh
    chmod -R 777 ../liricoin-master
    echo "Downloading Dependencies";
    sudo apt-get update
    sudo apt-get --yes --force-yes install software-properties-common python-software-properties
    sudo apt-get update
    sudo apt-get --yes --force-yes install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
    sudo apt-get --yes --force-yes install g++-mingw-w64-i686 mingw-w64-i686-dev g++-mingw-w64-x86-64 mingw-w64-x86-64-dev curl
    sudo apt-get --yes --force-yes install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
    sudo apt-get --yes --force-yes install git
    sudo add-apt-repository ppa:bitcoin/bitcoin -y
    sudo apt-get update
    sudo apt-get --yes --force-yes install libdb4.8-dev libdb4.8++-dev
    echo "End of download";
    
    echo "Compilation Start";
    ./autogen.sh
    ./configure
    make
    echo "Compilation End";
    
    echo "Copying Commands";
    cp src/liricoind /usr/local/bin;
    cp src/liricoin-cli /usr/local/bin;
    cp src/liricoin-util /usr/local/bin;
    echo "End";




