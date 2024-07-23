# Análisis de datos de transporte público en España
## Objetivos
- Realizar un Análisis Exploratorio de Datos (EDA)
- Transformación de Datos
- Análisis para Mejorar la Eficiencia del Transporte
- Diseñar una Base de Datos en SQL e Insertar los Datos usando Python
- Crear un Dashboard que incluya las principales conclusiones extraídas de tu análisis. Puedes usar Tableau o Power BI.

## Requisitos
Proporcionar la solución en un Jupyter Notebook que incluya:
- Los razonamientos y decisiones tomadas durante el análisis.
- El código Python utilizado para la transformación y análisis de los datos.
- La creación e inserción de la base de datos en SQL.
- Las visualizaciones y conclusiones obtenidas.

## Entorno
Se ha exportado el entorno en un fichero requeriments.txt en el directorio raiz de este Repositorio.  
Con el comando : **!pip freeze > requirements.txt**
Al tener el archivo `requirements.txt`, puedes recrear el mismo entorno en otro sistema usando el comando:

pip install -r requirements.txt

Se facilita también una carpeta Docker, que contiene los ficheros necesarios para la creación de un servidor local de BBDD opcional en caso de querer utilizarlo:  
**Paso 1: Construir y Ejecutar los Servicios con Docker Compose**  
Para construir y ejecutar los servicios definidos en docker-compose.yml, abre una terminal y navega al directorio que contiene docker-compose.yml y Dockerfile.dockerfile.  
Ejecuta el siguiente comando para construir y ejecutar los contenedores:  

docker-compose up --build  -d


**Paso 2: Verificar que los Servicios Están Corriendo**  
Utiliza el siguiente comando para listar los contenedores corriendo:

docker ps  

**Paso 3: Detener y Eliminar los Contenedores**  
Para detener y eliminar los contenedores creados por Docker Compose:  

docker-compose down
