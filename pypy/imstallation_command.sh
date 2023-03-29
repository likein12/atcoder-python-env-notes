# get-pip.pyなどの一時ファイルはここに置く
cd /tmp

sudo apt update
# software-properties-common : add-apt-repository用
# git : ac-library-pythonのインストールなどに使う
sudo apt-get install -y software-properties-common git

# PPA https://launchpad.net/~pypy/+archive/ubuntu/ppa
# 7.3.11+dfsg-1~ppa1~ubuntu22.10が入る
sudo add-apt-repository -y ppa:pypy/ppa
sudo apt update
sudo apt install -y pypy3

# ジャッジサーバの仕様がわからないけれど、wgetはデフォルトで入ってそう？なのでスキップ
# sudo apt install -y wget

# pipを使えるようにする
wget https://bootstrap.pypa.io/get-pip.py
sudo pypy3 get-pip.py
# numpyなど各種ライブラリを入れるのに必要
sudo apt install -y pypy3-dev
sudo apt install -y gcc g++ gfortran libopenblas-dev liblapack-dev pkg-config libgeos-dev

pypy3 -mpip install \
    numpy==1.24.1 \
    scipy==1.10.1 \
    networkx==3.0 \
    sympy==1.11.1 \
    sortedcontainers==2.4.0  \
    more-itertools==9.0.0 \
    shapely==2.0.0 \
    bitarray==2.6.2 \
    PuLP==2.7.0 \
    mpmath==1.2.1 \
    pandas==1.5.2 \
    z3-solver==4.12.1.0 \
    scikit-learn==1.2.0 \
    typing-extensions==4.4.0 \
    cppyy==2.4.1 \
    git+https://github.com/not522/ac-library-python
