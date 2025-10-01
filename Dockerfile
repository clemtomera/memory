# image officielle Nginx comme base
FROM nginx:alpine

# Copie la configuration personnalisée de nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Copie les sources du site dans le dossier attendu par nginx
COPY html/ /var/concentration/html/

RUN chown -R nginx:nginx /var/concentration/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]