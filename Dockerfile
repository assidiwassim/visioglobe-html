# Use an official NGINX image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default NGINX static files
RUN rm -rf ./*

# Copy the application files into the container
COPY . .

# Expose port 80 to serve the HTML file
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
