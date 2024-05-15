#Para hacer la migracion de base de datos hace falta los siguientes comandos:
```bash
docker exec -it [idcontenedor] pg_dump -h localhost -p 5432 -U strapi -d strapi -F p -E UTF-8 --no-comments -f /mydatabase.sql
```

#Esto genera el archivo en el contenedor, y para sacarlo del contenedor se hace lo siguiente:
```bash
docker cp [idcontenedor]:/mydatabase.sql ./backend/database/migrations/
```
Asi es como se saca el archivo de la base de datos y se guarda en la carpeta de migraciones de la base de datos.
