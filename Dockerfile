# Use the Nginx base image
FROM nginx

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your website files into the container
COPY . /usr/share/nginx/html

# Expose the default HTTP port
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
