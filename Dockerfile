
FROM ubuntu:20.04
# Install apache2
RUN apt-get update && apt-get install -y apache2

# Copy the HTML file to the Apache server's root directory
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start apache2 service
CMD ["apachectl", "-D", "FOREGROUND"]