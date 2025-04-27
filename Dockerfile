# Step 1: Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Step 2: Copy the site files into the Nginx web server directory
COPY . /usr/share/nginx/html

# Step 3: Expose port 80 to allow access to the site
EXPOSE 5000

# Step 4: Nginx will automatically serve the site, no need for a command
