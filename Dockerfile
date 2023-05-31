# Use the Nginx base image
FROM ubuntu:latest

RUN apt-get update

RUN apt-get install nginx -y

# Copy your website files into the container
COPY . /var/www/html

# Expose the default HTTP port
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
