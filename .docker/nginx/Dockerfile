FROM nginx:1.13

RUN apt-get update && apt-get install -y openssl --no-install-recommends

ADD openssl.conf /etc/nginx/ssl/openssl.conf
ADD nginx.conf /etc/nginx/conf.d/default.conf

ADD gen-cert.sh /usr/local/bin/gen-cert
RUN /usr/local/bin/gen-cert
