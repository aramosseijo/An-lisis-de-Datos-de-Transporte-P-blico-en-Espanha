# Utilizar la imagen oficial de MySQL
FROM mysql:latest

# Establecer variables de entorno
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=transporte_publico

# Exponer el puerto 3306
EXPOSE 3306
