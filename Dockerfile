FROM ubuntu:bionic

RUN apt update && apt dist-upgrade -y && \
    apt -y install build-essential gcc-multilib lib32stdc++-7-dev python-dev python3-dev git curl libstdc++-7-dev python3.6 python3.7 && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt install -y nodejs && \
    useradd -m frida

USER frida
WORKDIR /frida
ENTRYPOINT ["make"]
