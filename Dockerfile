FROM python:3.13

WORKDIR /usr/src/app

RUN \
  pip install asyncio-paho && \
  pip install casambi-bt && \
  pip install paho-mqtt

COPY casambi-mqtt.py .

CMD ["python", "/usr/src/app/casambi-mqtt.py"]
