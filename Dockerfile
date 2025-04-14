# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy the static HTML file from your repository context into the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (standard HTTP port Nginx listens on)
EXPOSE 8081

# Default command to run Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]