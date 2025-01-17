FROM alpine:latest
WORKDIR /emqtt
COPY emqtt.py requirements.txt ./
RUN apk add --no-cache python3 py3-pip && python3 -m venv /tmp/venv && source /tmp/venv/bin/activate && pip3 install -r requirements.txt
EXPOSE 1025
ENV PATH="/tmp/venv/bin:$PATH"
CMD ["python3", "emqtt.py"]
