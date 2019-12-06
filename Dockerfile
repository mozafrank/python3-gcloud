FROM debian:sid

RUN apt update && \
    apt -y install curl apt-transport-https ca-certificates gnupg python3 python3-pip pipenv && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list && \
    apt update && \
    apt -y install google-cloud-sdk && \
    apt clean

