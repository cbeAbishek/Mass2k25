# Use lightweight nginx image
FROM nginx:alpine

# Copy website files to nginx html directory
COPY . /usr/share/nginx/html

# Configure nginx to listen on port 3000
RUN sed -i 's/listen\s*80;/listen 3000;/' /etc/nginx/conf.d/default.conf

# Expose port 3000
EXPOSE 3000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
