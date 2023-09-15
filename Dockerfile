FROM ubuntu:22.04

ENV MAKEFLAGS="-j$(nproc)"
RUN apt update && apt install -y git wget python3 dotnet-sdk-7.0 python3-venv python3-pip unzip libglib2.0-0 libgl1-mesa-glx unzip
WORKDIR /app

RUN wget https://github.com/invoke-ai/InvokeAI/releases/download/v3.1.1/InvokeAI-Installer-v3.1.1.zip
RUN unzip InvokeAI-Installer-v3.1.1.zip
WORKDIR InvokeAI-Installer

CMD ["bash"]
