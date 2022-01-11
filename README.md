# PET-HOME

## TODO por scripts:

- [x] s-02-entidades
 	-	~~creacion de la columna virtual para el campo edad de la entidad mascota. ~~

 	-~~ Si se agrega el campo edad, es necesario modificar el modelo, tal vez en una vista sea posible. ~~

	-	forma de implementar un defult

			modificar el tipo de dato del modelo, de la tabla mascota

- [x] s-03-tablas-temporales
	-	~~verificar su funcionamiento~~

- [ ] s-09-carga-inicial
	-	~~Poblar los centros operativos~~
	-	~~Cambiar valores booleanos por el apropiado para oracle~~
	-	~~Corregir formato para que las fechas se inserten correctamente~~
	- ~~Poblar tablas temporales~~


- [x] s-10-consultas
	-	~~Consulta que involucre un: tabla temporal~~
	- ~~Revisar primera consulta (No regresa registros)~~
	- ~~Revisar penultima consulta utilizando un BLOB~~

- [x] s-11-tr
	-	~~segundo trigger tipo row level.~~
	-	~~compound trigger~~

	-	~~Trigger utilizando entidad adopción, Al momento de ralizar una adopción, por el modelo tambien hay que cambiar el cliente_id en mascota que denota su nuevo dueño, esto se puede implementar como un after trigger creo yo.~~
	-	~~Verificar que efectivamente el script s-11-tr-ganador-adopción se ejecuta correctamente~~

- [x] s-12-tr-prueba
	-	~~prueba para segundo trigger tipo row level~~
	-	~~prueba para compund trigger~~

- [x] s-13-p
	-	~~procedimineto mas complejos que insersion a la tabla mascota~~
	-	~~posible procedimiento al relizar la adopción? o exportar datos~~
	
	-	~~"Se requiere exportar los datos a CSV de cada revision de mascota, con el fin de evaluar el desempeño del empleado que realizó la revisión. "
	posiblemente aqui podamos utilizar cursores.~~


- [x] s-14
	-	~~prueba para procedimiento 1~~
	-	~~prueba para procedimiento 2~~
	-	~~prueba para procedimiento 3~~

- [x] s-15-fx
	-	~~función para el calculo de la nómina (por centro operativo) --> usar cursor~~
	- ~~función que exporta mascota (join de mascota con revisiones) para un csv~~
	-	~~funcion que inserte leer una foto y se obtenga un objeto blob para insertar en cualquier campo que utilice un blob (?)~~

- [x] s-16-fx 
	- ~~Prueba func1~~
	- ~~Prueba func2~~
	-	~~Prueba func3~~

- [x] s-19-cur
	-	~~emplear cursores, en cualquier otro lado, o en este mismo script particular~~
	
- [x] Errores modelo
	- Mascota
		- ~~Causa muerte~~
		- ~~fecha_nacimiento~~
	- Clinica
		- ~~Hora inicio y fin deben ser varchar~~
	- Empleado
		- ~~cambiar a 'sueldo' en el modelo~~
