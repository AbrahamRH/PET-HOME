# PET-HOME

## TODO
- Creación de columna virtual en el script s-02-entidades.sql, podria añadirse el campo edad en la entidad de MASCOTA
	- Si se agrega el campo edad es necesario modificar el modelo
- Buscar otra forma de implementar un default en s-02-entidades.sql
- Modificar el tipo de dato del modelo, de la tabla MASCOTA
- Verificar tablas temporales
- Trigger utilizando entidad adopción,
	Al momento de ralizar una adopción, por el modelo tambien hay que cambiar el cliente_id en mascota que denota
	su nuevo dueño, esto se puede implementar como un after trigger creo yo.
-Poblar Centro operativos
