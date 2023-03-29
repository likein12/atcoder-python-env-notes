# 2023/03/29

# sudo apt install pypyだと7.3.1がインストールされるっぽい
# wget https://downloads.python.org/pypy/pypy3.9-v7.3.11-linux64.tar.bz2
# sudo apt install bzip2
# tar -xvf pypy3.9-v7.3.11-linux64.tar.bz2
#sudo snap install pypy3 --classic
#pypy3 -mpip ensurepip
#pypy3 -mpip install --upgrade pip

sudo apt-get install -y software-properties-common git

sudo add-apt-repository ppa:pypy/ppa
sudo apt update
sudo apt install pypy
wget https://bootstrap.pypa.io/get-pip.py
sudo apt install pypy3-dev
sudo apt install -y build-essential gcc g++ gfortran libopenblas-dev liblapack-dev pkg-config libgeos-dev 
# cd pypy3.9-v7.3.11-linux64
pypy3 get-pip.py

# torch,polarsを一時削除
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