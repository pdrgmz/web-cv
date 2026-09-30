# Usa una imagen oficial y liviana de NGINX
FROM nginx:alpine

# Copia los archivos de tu sitio web al directorio que sirve NGINX por defecto
COPY . /usr/share/nginx/html

# Expone el puerto 80 dentro del contenedor
EXPOSE 80

# Arranca NGINX en primer plano
CMD ["nginx", "-g", "daemon off;"]