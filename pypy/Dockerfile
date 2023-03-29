FROM ubuntu:22.10

# get-pip.pyなどの一時ファイルはここに置くことを推奨されている
WORKDIR /tmp

# dockerコンテナ内では基本コマンドがrootユーザーで実行されるため、
# AtCoderのサーバでの環境構築と違い、sudoがつかないことに注意
RUN apt update
# software-properties-common : add-apt-repository用
# git : ac-library-pythonのインストールなどに使う
RUN apt-get install -y software-properties-common git

# 普通にsudo apt install pypyでインストールすると7.3.1がインストールされるので
# 下記のようにインストール
# PPA https://launchpad.net/~pypy/+archive/ubuntu/ppa
# 7.3.11+dfsg-1~ppa1~ubuntu22.10が入る
RUN add-apt-repository -y ppa:pypy/ppa
RUN apt update
RUN apt install -y pypy3

#wgetはジャッジサーバではデフォルトで入ってそう？
# ubuntuのdocker imageには入っていない
RUN apt install -y wget
# pipを使えるようにする
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN pypy3 get-pip.py
# numpyなど各種ライブラリを入れるのに必要
RUN apt install -y pypy3-dev
RUN apt install -y gcc g++ gfortran libopenblas-dev liblapack-dev pkg-config libgeos-dev

RUN pypy3 -mpip install \
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

WORKDIR /judge

