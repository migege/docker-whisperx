FROM pytorch/pytorch:2.3.1-cuda11.8-cudnn8-devel

RUN apt-get update && \
  apt-get install -y ffmpeg libcublas-12-0 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN pip install whisperx==3.3.1  && \
  pip cache purge
