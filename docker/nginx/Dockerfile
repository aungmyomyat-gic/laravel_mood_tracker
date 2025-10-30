FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy your Laravel-specific Nginx config
COPY ./docker/nginx/conf.d/app.conf /etc/nginx/conf.d/default.conf

# Copy Laravel public files into the container
COPY ./public /var/www/public

# Adjust permissions
RUN chmod -R 755 /var/www

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
