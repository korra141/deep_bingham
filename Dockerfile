FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-runtime 
WORKDIR /app
COPY ./environment.yaml .
RUN mkdir code
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN conda env create --file=environment.yaml
#RUN conda activate deep_orientation
EXPOSE 3000
