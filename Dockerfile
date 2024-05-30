# Use the official Ubuntu image as a base
FROM ubuntu:latest

# Update package repository and install Apache
RUN apt-get update && apt-get install -y apache2

# Copy index.html to the default directory for Apache
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
