FROM azuresdk/azure-cli-python:latest
COPY install.sh /home/install.sh

WORKDIR /home

CMD ["sh", "-c", "sleep 18000"]
