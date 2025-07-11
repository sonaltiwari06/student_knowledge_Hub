# Use official nginx image
FROM nginx:alpine

# Remove default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/

# Copy all website files to nginx html directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
