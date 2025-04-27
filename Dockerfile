FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
CMD ["python3", "app.py"]

# FROM python:3.8-slim-buster
# # from docker hub it will bring up python 3.8 version of linux base image
# # creating working directory called app
# WORKDIR /app 

# # copying entire project into app folder
# COPY . /app

# #updating all packages before deploying into particular server
# RUN apt update -y && apt install awscli -y

# #installing requirement.txt
# # RUN apt-get update && pip install -r requirements.txt
# RUN pip install -r requirements.txt

# #command to run the app.py
# CMD ["python3", "app.py"]

