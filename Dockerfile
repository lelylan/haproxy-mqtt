FROM dockerfile/haproxy
MANTAINER Andrea Reginato <andrea.reginato@gmail.com>

# Add personalized configuration
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

# Define start/restart command.
CMD ["bash", "haproxy -f /etc/haproxy/haproxy.cfg -D -p /var/run/haproxy.pid"]

# Expose ports.
EXPOSE 80
EXPOSE 443
EXPOSE 1883
