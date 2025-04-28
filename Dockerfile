# Use nginx as base image
FROM nginx:alpine

# Copy HTML website files to the default nginx public directory
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 3000

# Command to run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
