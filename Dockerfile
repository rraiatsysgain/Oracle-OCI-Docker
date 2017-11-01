FROM azuresdk/azure-cli-python:latest

COPY install.sh /home/install.sh
COPY login.sh /home/login.sh
COPY createrg.sh /home/createrg.sh
COPY validate.sh /home/validate.sh
COPY deploy.sh /home/deploy.sh
COPY destroy.sh /home/destroy.sh
COPY output.sh /home/output.sh

WORKDIR /home

CMD ["sh", "-c", "sleep 18000"]
