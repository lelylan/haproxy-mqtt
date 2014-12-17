FROM dockerfile/haproxy
MANTAINER Andrea Reginato <andrea.reginato@gmail.com>

# Add personalized configuration
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

# start proxy restart
CMD ["bash", "service haproxy restart"]

# Expose ports.
EXPOSE 80
EXPOSE 443
EXPOSE 1883
