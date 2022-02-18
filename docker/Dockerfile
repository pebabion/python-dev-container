ARG  IMAGE
FROM ${IMAGE}

LABEL maintainer="pebabion (Kelvin Nguyen Le) <lenguyen1794@gmail.com>"

RUN apt-get -y install git

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]
