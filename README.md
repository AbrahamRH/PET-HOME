# PET-HOME

## TODO por scripts:

- [x] s-02-entidades
 	-	creacion de la columna virtual para el campo edad de la entidad mascota. 

 	-	Si se agrega el campo edad, es necesario modificar el modelo, tal vez en una vista sea posible. 

	-	forma de implementar un defult

			modificar el tipo de dato del modelo, de la tabla mascota

- [x] s-03-tablas-temporales
	-	verificar su funcionamiento

- [ ] s-09-carga-inicial
	-	Poblar los centros operativos
	-	Cambiar valores booleanos por el apropiado para oracle


- [ ] s-10-consultas
	-	Consulta que involucre un: sinonimo, vista, tabla temporal, tabla externa,

- [ ] s-11-tr
	-	segundo trigger tipo row level.
	-	compound trigger

	-	Trigger utilizando entidad adopción, Al momento de ralizar una adopción, por el modelo tambien hay que cambiar el cliente_id en mascota que denota su nuevo dueño, esto se puede implementar como un after trigger creo yo.

- [ ] s-12-tr-prueba
	-	prueba para segundo trigger tipo row level
	-	prueba para compund trigger

- [ ] s-13-p
	-	procedimineto mas complejos que insersion a la tabla mascota
	-	posible procedimiento al relizar la adopción? o exportar datos:
	
	-	"Se requiere exportar los datos a CSV de cada revision de mascota, con el fin de evaluar el desempeño del empleado que realizó la revisión. "
	posiblemente aqui podamos utilizar cursores.


- [ ] s-14
	-	prueba para el procedimiento mas complejo

- [ ] s-15-fx
	-	funcion que genere el CURP para cada empleado (?)
	-	funcion que inserte leer una foto y se obtenga un objeto blob para insertar en cualquier campo que utilice un blob (?)

- [ ] s-16-fx 
	-	pruebas para cada función

- [ ] s-19-cur
	-	emplear cursores, en cualquier otro lado, o en este mismo script particular
	
