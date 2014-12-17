FROM dockerfile/haproxy
MANTAINER Andrea Reginato <andrea.reginato@gmail.com>

# Add personalized configuration
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

# Add restart commands
ADD restart.bash /haproxy-restart

# Define working directory.
WORKDIR /etc/haproxy

# Define default command.
CMD ["bash", "/haproxy-start"]

# Expose ports.
EXPOSE 80
EXPOSE 443
EXPOSE 1883
