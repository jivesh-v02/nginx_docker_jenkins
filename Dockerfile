# Use official Nginx image as base
FROM nginx:alpine

# Copy custom index.html to default nginx html folder
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
