FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
# FROM nvidia/cuda:12.0.1-cudnn8-runtime-ubuntu22.04
# FROM nvidia/cuda:12.0.0-cudnn8-runtime-ubuntu20.04

# timezone set to prevent timezone interactive mode hold
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
        && apt-get install -y build-essential python3.10 python3-pip git\
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /

RUN pip install -U pip setuptools wheel
RUN pip install -U torch torchaudio --index-url https://download.pytorch.org/whl/cu118 # https://download.pytorch.org/whl/nightly/cu121
RUN pip install -U so-vits-svc-fork


WORKDIR /app
# ENTRYPOINT ["/bin/bash", "setup.sh"]

