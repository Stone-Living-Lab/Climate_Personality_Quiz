FROM nginx:alpine

# Copy your static HTML/JS/CSS files into the default Nginx public directory
COPY . /usr/share/nginx/html

# Expose port 80 (Nginx default)
EXPOSE 80

# Ensure Nginx has proper read permissions for all files and folders
RUN chmod -R 755 /usr/share/nginx/html/
