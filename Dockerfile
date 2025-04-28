# Use nginx as base image
FROM nginx:alpine

# Create a directory for the website files
RUN mkdir -p /usr/share/nginx/html

# Create a default index.html file
RUN echo '<html><head><title>My Website</title></head><body><h1>Welcome to My Website</h1><p>This is a default page. Replace with your own content.</p></body></html>' > /usr/share/nginx/html/index.html

# If you have HTML files, uncomment the following line:
# COPY ./html /usr/share/nginx/html

# Configure nginx to listen on port 3000
RUN sed -i 's/listen\s*80;/listen 3000;/' /etc/nginx/conf.d/default.conf

# Expose port 3000
EXPOSE 3000

# Command to run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
