FROM python:latest

WORKDIR /usr/app

COPY requirements.txt .
COPY main.py .

RUN apt update -y && apt upgrade -y 
RUN apt install make cmake g++ gcc python3-venv python3-opencv nano -y

RUN pip install -r requirements.txt

CMD [ "python" "main.py"]