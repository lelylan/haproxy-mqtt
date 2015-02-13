FROM dockerfile/haproxy
MAINTAINER Andrea Reginato <andrea.reginato@gmail.com>

VOLUME /certs:/certs

# Add personalized configuration
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

# Define working directory.
WORKDIR /etc/haproxy

# Define default command.
CMD ["bash", "/haproxy-start"]

# Expose ports.
EXPOSE 80
EXPOSE 443
EXPOSE 1883
