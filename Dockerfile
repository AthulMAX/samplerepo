FROM nginx:latest

# Copy your web app content to the default Nginx directory
COPY webapp.html /usr/share/nginx/html/index.html

# Expose the port the app will run on
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

