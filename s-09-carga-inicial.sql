--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-28
--@Descripción:     Script para realizar la carga inicial todas las tablas de la base de datos.ABORT

--TODO:
--Llenar con datos de mockaroo xd
--CAMBIAR A TIPOS DE DATOS VALIDOS los booleanos

connect rj_proy_admin/rj_admin
set serveroutput on 


prompt Llenando datos para centros operativos
--Centro operativo
insert into centro_operativo(centro_operativo_id, nombre, direccion, latitud, longitud, es_refugio, es_clinica, es_oficina ) 
                      values(1, 'PET-HOME La loma', 'Calle 1 #128, Colonia X Estado Y', 18.99, -98.04, 0,1,1);

insert into clinica(centro_operativo_id, hora_inicio, hora_fin, telefono_atencion, telefono_emergencia)
                    values(1, '09:00 AM', '18:30 PM', 2221458780, 911);

insert into oficina(centro_operativo_id, persona_moral_rfc, firma_electronica, responsable_nombre, responsable_ap_pat, responsable_ap_mat)
                    values(1, 'RRXXGGHHH!!!', empty_blob(), 'Juan', 'Martinez','Perez');


----------

insert into centro_operativo(centro_operativo_id, nombre, direccion, latitud, longitud, es_refugio, es_clinica, es_oficina ) 
                      values(2, 'Oficina PET-HOME Plaza X', 'Av. 23 #1024, Colonia Z, Estado Y', 20.99, -99.04, 0,0,1);

insert into oficina(centro_operativo_id, persona_moral_rfc, firma_electronica, responsable_nombre, responsable_ap_pat, responsable_ap_mat)
                    values(2, 'AAXXGGHHH!!!', empty_blob(), 'Pedro', 'Hernandez','Perez');

-----------


insert into centro_operativo(centro_operativo_id, nombre, direccion, latitud, longitud, es_refugio, es_clinica, es_oficina ) 
                      values(3, 'Clinica PET-HOME Circuito Interior', 'Pino Suarez #23, Colonia A Estado Y', 19.051, -98.06, 0,1,0);


insert into clinica(centro_operativo_id, hora_inicio, hora_fin, telefono_atencion, telefono_emergencia)
                    values(3, '10:00 AM', '19:40 PM', 5567879032, 911);

-----------
insert into centro_operativo(centro_operativo_id, nombre, direccion, latitud, longitud,es_refugio, es_clinica, es_oficina ) 
                      values(4, 'Refugio PET-HOME El Valle', 'Calle 43 #256, Colonia X Estado Y', 19.47, -97.67, 1,0,0);

insert into refugio(centro_operativo_id, numero_de_registro, capacidad_maxima ,lema, refugio_alterno_id)
                     values(4,'12345678',200,'Cuidado con el perro!', 4);

 
prompt Llenando datos para cliente

--Cliente  (100 registros)
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (1, 'Weylin', 'Spellacey', 'Chuney', '0 Arapahoe Place', 'policía', 'Vevyi7XKa');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (2, 'Sebastian', 'Hubbard', 'Bodocs', '037 Reinke Terrace', 'policía', 'UimdbchqvX');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (3, 'Paulie', 'Scarbarrow', 'Jump', '76148 Thackeray Lane', 'doctor', 'YKL6pIG8qgLf');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (4, 'Katherina', 'Demicoli', 'Sessions', '89 Oak Valley Avenue', 'policía', '55QwYC');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (5, 'Diahann', 'Feaviour', 'Ahearne', '6 Schurz Plaza', 'dentista', 'CTqCGgK6SU60');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (6, 'Estella', 'Glassopp', 'Gatty', '4 Texas Trail', 'ingeniero', 'jEQJJCQok');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (7, 'Engelbert', 'Darnborough', 'Faragan', '48060 Continental Lane', 'doctor', 'VvL3gZQ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (8, 'Lazaro', 'Buzek', 'Knocker', '7 Corscot Terrace', 'reportero', 'aQl5V6j1');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (9, 'Alverta', 'Joriot', 'Jerzyk', '262 Debs Crossing', 'doctor', '07sy5VSF7s');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (10, 'Clair', 'Weall', 'Friary', '9543 Lunder Trail', 'bombero', 'ieZBJkDs4L');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (11, 'Mandie', 'Stolting', 'Bente', '46195 North Drive', 'policía', '1f8xFyRuqf');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (12, 'Guillermo', 'Santo', 'Paton', '93390 Dryden Drive', 'reportero', 'D6KYQGDk');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (13, 'Leela', 'Hamlin', 'Van Der Vlies', '2336 Amoth Avenue', 'reportero', 'q4mFMMnE2');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (14, 'Rosana', 'Rigard', 'Taylor', '4 Sunfield Junction', 'contador', 'oHkG2l0IwFhO');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (15, 'Devonna', 'Halhead', 'Gelardi', '02 Victoria Park', 'artista', 'dk0VSFr');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (16, 'Averell', 'Michurin', 'Ginnety', '97199 Meadow Valley Place', 'soldado', 'HmR27ppEPf');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (17, 'Shelbi', 'Rawes', 'Halworth', '58469 Fuller Pass', 'reportero', 'hS2IOD');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (18, 'Josie', 'Karchowski', 'Northall', '530 Shasta Center', 'bombero', 'N0uvuRS');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (19, 'Syd', 'Shann', 'Gusticke', '1208 Village Way', 'abogado', 'iYEVCqN');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (20, 'Charmine', 'Eaklee', 'Brookzie', '579 Grim Way', 'reportero', 'BgTdIcJ1');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (21, 'Johnny', 'Pollastrone', 'Nazair', '43799 Nova Parkway', 'ingeniero', 'r6qvTnWq');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (22, 'Nathaniel', 'Binton', 'Manass', '24266 Karstens Pass', 'profesor', 'olKclQb0');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (23, 'Ola', 'Layfield', 'MacCart', '77732 Trailsway Road', 'bombero', 'MCPSAhE6y');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (24, 'Cesare', 'Merle', 'Beardwell', '70 Vidon Trail', 'policía', '3YZvWKrm');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (25, 'Kessiah', 'Minget', 'Segebrecht', '98267 Independence Park', 'policía', '3TCA6lWJp');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (26, 'Port', 'Mattiazzo', 'Haulkham', '64997 East Junction', 'soldado', 'pM6NxSKybh');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (27, 'Darleen', 'Alker', 'Blincko', '71 Elka Park', 'artista', 'DKAGh7W');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (28, 'Jocko', 'Charrier', 'McRinn', '16 Dahle Parkway', 'estudiante', 'pCUhvhVz0');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (29, 'Korney', 'Dowsing', 'Machen', '0328 Homewood Crossing', 'soldado', '0IbGFhc');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (30, 'Bobette', 'Denys', 'Reddlesden', '1 Scofield Junction', 'dentista', 'oEbcUNUv');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (31, 'Sonya', 'Lyttle', 'Curee', '50 Sheridan Point', 'bombero', 'QDCzNN4jhhwF');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (32, 'Seth', 'Mattek', 'Pendlebury', '21287 Dapin Point', 'profesor', 'M5gE2fSV');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (33, 'Hanson', 'Gerrens', 'Wallage', '36151 Chive Drive', 'sin profesión', 'u4C6pIrb');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (34, 'Lotty', 'Ferenczy', 'McWaters', '979 Dottie Parkway', 'estudiante', 'JY8aLUk7c3CB');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (35, 'Wilfrid', 'Aslett', 'Scruton', '3847 Waxwing Center', 'soldado', 'wTJCvcR40qN');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (36, 'Gayla', 'Clemmow', 'Bowller', '6 Hagan Court', 'contador', 'llOQivWjQNi');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (37, 'Kelsey', 'Rought', 'Berendsen', '908 Crowley Parkway', 'policía', 'wE7USWqNGKht');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (38, 'Wilden', 'Leuren', 'Gonnin', '8 Welch Circle', 'abogado', 'Ixrq6EHiLCi');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (39, 'Alia', 'Reolfo', 'Hartfleet', '3 Wayridge Hill', 'profesor', 'twapQJEg');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (40, 'Nathanael', 'McLucky', 'Obell', '3 Anniversary Point', 'estudiante', 'xaCLPa2nOuEs');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (41, 'Padraig', 'Callow', 'Petras', '425 Farwell Hill', 'doctor', 'guX74S');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (42, 'Thadeus', 'Vickers', 'Tott', '0235 Springs Trail', 'reportero', '6UGl8qJ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (43, 'Tabbi', 'Daubney', 'Sisselot', '23701 Mallory Drive', 'sin profesión', 'ZHTTqVLK');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (44, 'Sloan', 'Dixcee', 'Slaughter', '8 Pepper Wood Way', 'contador', '0hY4pHKw');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (45, 'Everard', 'Seathwright', 'Bruni', '888 Gina Plaza', 'policía', 'tud8wN');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (46, 'Belicia', 'Aharoni', 'Keener', '332 Randy Terrace', 'contador', 'Pgg4EG1V');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (47, 'Frances', 'Letch', 'Braikenridge', '4 Corben Way', 'contador', 'Ng8Ppx');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (48, 'Renelle', 'Tailby', 'Bonifazio', '94 Spohn Point', 'bombero', '6mSCjbi');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (49, 'Sile', 'Mumbray', 'Lewing', '42149 Clyde Gallagher Alley', 'policía', 'xHsaxG');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (50, 'Beatrix', 'Shenfish', 'Kabos', '1878 Acker Court', 'dentista', 'u5MgpsV4UOAS');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (51, 'Darrell', 'Henfre', 'Goreway', '3067 Northview Lane', 'ingeniero', 'bEFq1dtW');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (52, 'Felita', 'Livett', 'Piwell', '55263 Sundown Road', 'contador', 'vrTj3WC');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (53, 'Harald', 'Austen', 'Feary', '10 Lakewood Street', 'reportero', 'b5nLrw');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (54, 'Cris', 'Harbinson', 'De la Barre', '043 Katie Park', 'profesor', 'v6cFXw');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (55, 'Jo', 'Moulden', 'Thornhill', '76 Melrose Trail', 'bombero', 'uy5mmfuv');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (56, 'Albrecht', 'Shopcott', 'Parrin', '5244 Farragut Lane', 'estudiante', 'h6x1UyGUD');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (57, 'Cosette', 'Henningham', 'Bails', '179 Menomonie Center', 'doctor', 'Ugx6sDb');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (58, 'Thedric', 'Du Hamel', 'Piche', '69979 Westridge Lane', 'soldado', 'JNYMW4bX6Y');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (59, 'Ferrel', 'Gladhill', 'Craven', '84573 Hanson Place', 'enfermera', 'LUZByMIrFl');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (60, 'Vic', 'Bollin', 'Roussel', '579 Rigney Street', 'profesor', 'ssskKTnEGy');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (61, 'Tarrance', 'Cowdry', 'Stitle', '9 Maywood Center', 'enfermera', 'PPi2uQRpp');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (62, 'Ethel', 'Fallowes', 'Bindin', '0821 Meadow Valley Center', 'ingeniero', 'ISi7mq2R');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (63, 'Keslie', 'Wieprecht', 'Fenemore', '11576 Texas Pass', 'dentista', 'EvxJ9lWHs');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (64, 'Jacquette', 'Gerdes', 'Ciccarello', '327 Burning Wood Court', 'ingeniero', 'iYH6huZW');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (65, 'Holly', 'Gladdolph', 'Gookey', '9 Brentwood Pass', 'bombero', '6HTiQXG06r');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (66, 'Borden', 'Djurisic', 'Alflatt', '72483 Onsgard Park', 'artista', 'nT1j0MXI');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (67, 'Jeramie', 'Cord', 'Edgson', '018 Heffernan Center', 'ingeniero', 'EMJAomGwKBWZ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (68, 'Alexander', 'But', 'Fulton', '1 Prairieview Terrace', 'contador', 'W3NutuY');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (69, 'Sol', 'Rayburn', 'Lambell', '212 Dennis Terrace', 'policía', 'ygkC9QJhQM');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (70, 'Bernelle', 'Boman', 'Camp', '89 Goodland Pass', 'profesor', 'gKrD3E021GN');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (71, 'Bernete', 'Belchamp', 'Yarker', '90 Dennis Trail', 'contador', 'H8gAkekFhSIS');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (72, 'Shae', 'Allcorn', 'Lindeboom', '139 Lakeland Trail', 'policía', 'TUmYqxG4qrmv');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (73, 'Elaina', 'Ellerton', 'de Tocqueville', '28069 Bay Drive', 'dentista', 'pArwCIJA8wK');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (74, 'Dukey', 'Cleeve', 'Liddard', '0 Gateway Lane', 'artista', 'ru2uk3n3AAz');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (75, 'Edi', 'Sirmond', 'Seally', '603 Butternut Lane', 'estudiante', 'Oq8iqg9cfZ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (76, 'Hedi', 'Kneeshaw', 'Betterton', '5 Pepper Wood Drive', 'bombero', 'oqIilDv');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (77, 'Krissy', 'Gasperi', 'Seson', '08849 Farragut Center', 'profesor', '6Aobhup');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (78, 'Ofella', 'Felderer', 'Nortcliffe', '2421 Randy Circle', 'artista', 'UIHrNhqi7');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (79, 'Jack', 'MacWhan', 'Braundt', '894 Stone Corner Street', 'dentista', 'U5ZnZdmSD');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (80, 'Debbi', 'Hurler', 'Thackwray', '5 Cambridge Drive', 'sin profesión', 'yC5kX8opFROZ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (81, 'Nadeen', 'Muckart', 'Gibbett', '8 Chinook Court', 'soldado', 'Rz4OLLwZg4');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (82, 'Kameko', 'Ritchie', 'Embra', '48199 Lake View Trail', 'profesor', 'ZXtnQyX2Glq');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (83, 'Van', 'Extal', 'Davidge', '29103 Spenser Plaza', 'bombero', 'luNwZtZ6');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (84, 'Rebe', 'Lonergan', 'Cranmer', '383 Nevada Junction', 'contador', 'EiqxhX3r');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (85, 'Shannon', 'Govier', 'Callaby', '8 Porter Center', 'estudiante', 'J0aRuu40FK9s');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (86, 'Richie', 'Gameson', 'Melmeth', '3 Barby Place', 'policía', 'K8v6ARX7u0uU');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (87, 'Raven', 'Slimings', 'Giddy', '22794 Bluestem Road', 'enfermera', 'PtE3vb5yn6');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (88, 'Francisco', 'Dudhill', 'Caruth', '2 Center Crossing', 'profesor', 'iviT3ZvI');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (89, 'Karilynn', 'Denman', 'Arnason', '6 Havey Place', 'ingeniero', 'DkVRqJr1');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (90, 'Gregoire', 'Penhalewick', 'Bletcher', '7 Sheridan Trail', 'contador', 'uCt6dILqZX');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (91, 'Auroora', 'Ballefant', 'Masserel', '40027 Roxbury Crossing', 'artista', 'K4MScLUyUn2');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (92, 'Stillman', 'Metrick', 'Tibald', '41879 Vera Way', 'doctor', '4cnU2D');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (93, 'Barny', 'Kettlestringe', 'MacBain', '8 Steensland Parkway', 'doctor', 'RjFq8va');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (94, 'Eugen', 'Jillis', 'Volette', '589 Thierer Plaza', 'estudiante', 'qfylFXTZM');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (95, 'Ambrosio', 'Lasham', 'Outram', '30 Transport Center', 'estudiante', 'ljqecI');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (96, 'Cassandry', 'Petrolli', 'Mytton', '87293 Tony Alley', 'profesor', 'PcTpJ4JWrnzR');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (97, 'Gregor', 'Chapellow', 'Lasham', '96 Hanson Trail', 'abogado', 'MI0PAg6bqfqr');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (98, 'Lilla', 'Foxton', 'Paish', '37521 Dayton Plaza', 'reportero', 'XkMjNJYyrORZ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (99, 'Kelby', 'Benn', 'Durning', '64084 Corben Road', 'policía', 'ZOq0Wj9nQ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, ocupacion, password) values (100, 'Audrey', 'Throssell', 'Poplee', '30 Graedel Pass', 'ingeniero', '59BN9250DQ7');

prompt Llenando estatus mascota
--Estatus Mascota
insert into estatus_mascota(estatus_mascota_id, descripcion) values(1, 'EN_REFUGIO');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(2, 'DISPONIBLE_PARA_ADOPCIÓN');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(3, 'SOLICITADA_PARA_ADOPCIÓN');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(4, 'ADOPTADA');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(5, 'ENFERMA');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(6, 'FALLECIDA_EN_REFUGIO');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(7, 'FALLECIDA_EN_HOGAR');


prompt llenando tipo mascota
--Tipo Mascota
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(1, 'Ave', 3);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(2, 'Perro', 2);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(3, 'Gato', 3);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(4, 'Hamster', 4);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(5, 'Ratón', 2);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(6, 'Serpiente', 4);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(7, 'Tortuga', 3);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(8, 'Reptil', 2);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(9, 'Amfibio', 3);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(10, 'Axolote', 5);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(11, 'Pez de Aguadulce', 2);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo,  nivel_cuidado) values(12, 'Pez Tropical', 4);

prompt llenando origen
--Origen Mascota
insert into origen(origen_id, descripcion) values(1, 'DONADA_POR_CLIENTE');
insert into origen(origen_id, descripcion) values(2, 'ABANDONADA_EN_VIA_PÚBLICA');
insert into origen(origen_id, descripcion) values(3, 'NACIDA_EN_CAUTIVERIO');


prompt llenando mascota
--Mascota
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (1, 'Laurène', 'K40527AA', to_date('07/12/2020','dd/mm/yyyy'), to_date('04/02/2021','dd/mm/yyyy'), to_date('23/05/2019','dd/mm/yyyy'), null, 6, 2, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (2, 'Inès', 'Y10851FI', to_date('16/12/2020','dd/mm/yyyy'), to_date('21/06/2021','dd/mm/yyyy'), to_date('09/10/2019','dd/mm/yyyy'), null, 6, 4, 3, 1, 4, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (3, 'Marie-françoise', 'A83137CP', to_date('12/12/2020','dd/mm/yyyy'), to_date('28/02/2021','dd/mm/yyyy'), to_date('18/10/2019','dd/mm/yyyy'), null, 4, 3, 4, 2, 25, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (4, 'Françoise', 'C53671FI', to_date('26/08/2020','dd/mm/yyyy'), to_date('23/07/2021','dd/mm/yyyy'), to_date('04/08/2018','dd/mm/yyyy'), null, 1, 8, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (5, 'Mélinda', 'F65331JF', to_date('25/02/2020','dd/mm/yyyy'), to_date('18/03/2021','dd/mm/yyyy'), to_date('09/02/2018','dd/mm/yyyy'), null, 1, 10, 4, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (6, 'Marie-noël', 'N64788ZU', to_date('16/08/2020','dd/mm/yyyy'), to_date('20/10/2021','dd/mm/yyyy'), to_date('10/11/2019','dd/mm/yyyy'), 'Enfermadad crónica', 6, 6, 4, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (7, 'Léonie', 'J14104OE', to_date('03/08/2020','dd/mm/yyyy'), to_date('12/03/2021','dd/mm/yyyy'), to_date('01/04/2019','dd/mm/yyyy'), 'Atropellado', 1, 1, 3, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (8, 'Marie-hélène', 'A81517DJ', to_date('19/01/2020','dd/mm/yyyy'), to_date('09/06/2021','dd/mm/yyyy'), to_date('06/11/2019','dd/mm/yyyy'), 'Avanzada Edad', 7, 3, 4, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (9, 'Gisèle', 'X90730YE', to_date('10/06/2020','dd/mm/yyyy'), to_date('06/07/2021','dd/mm/yyyy'), to_date('17/12/2017','dd/mm/yyyy'), null, 2, 4, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (10, 'Aí', 'Z58171HA', to_date('04/09/2020','dd/mm/yyyy'), to_date('03/03/2021','dd/mm/yyyy'), to_date('26/07/2018','dd/mm/yyyy'), null, 6, 10, 4, 2, null, 65);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (11, 'Alizée', 'M68342WT', to_date('18/11/2020','dd/mm/yyyy'), to_date('02/04/2021','dd/mm/yyyy'), to_date('01/02/2019','dd/mm/yyyy'), null, 4, 2, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (12, 'Pål', 'E78758IY', to_date('16/10/2020','dd/mm/yyyy'), to_date('26/04/2021','dd/mm/yyyy'), to_date('15/11/2018','dd/mm/yyyy'), null, 5, 9, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (13, 'Görel', 'R11938KP', to_date('21/09/2020','dd/mm/yyyy'), to_date('30/09/2021','dd/mm/yyyy'), to_date('13/08/2018','dd/mm/yyyy'), null, 2, 2, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (14, 'Kù', 'T51765DG', to_date('02/08/2020','dd/mm/yyyy'), to_date('04/10/2021','dd/mm/yyyy'), to_date('21/08/2018','dd/mm/yyyy'), null, 7, 11, 4, 3, null, 14);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (15, 'Gaétane', 'D38459WB', to_date('10/07/2020','dd/mm/yyyy'), to_date('02/05/2021','dd/mm/yyyy'), to_date('30/03/2019','dd/mm/yyyy'), 'Enfermadad crónica', 6, 12, 4, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (16, 'Maëline', 'U19262DM', to_date('17/01/2020','dd/mm/yyyy'), to_date('18/04/2021','dd/mm/yyyy'), to_date('01/07/2018','dd/mm/yyyy'), 'Enfermadad crónica', 5, 9, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (17, 'Uò', 'F43950GK', to_date('09/12/2020','dd/mm/yyyy'), to_date('19/03/2021','dd/mm/yyyy'), to_date('18/03/2019','dd/mm/yyyy'), 'Cancer de Higado', 7, 9, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (18, 'Anaël', 'F03846GB', to_date('07/08/2020','dd/mm/yyyy'), to_date('27/09/2021','dd/mm/yyyy'), to_date('07/10/2019','dd/mm/yyyy'), null, 2, 5, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (19, 'Félicie', 'T43111KV', to_date('21/11/2020','dd/mm/yyyy'), to_date('14/02/2021','dd/mm/yyyy'), to_date('28/05/2018','dd/mm/yyyy'), null, 5, 7, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (20, 'Régine', 'P46278EW', to_date('20/11/2020','dd/mm/yyyy'), to_date('28/11/2021','dd/mm/yyyy'), to_date('19/08/2018','dd/mm/yyyy'), 'Avanzada Edad', 4, 12, 3, 2, 79, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (21, 'Cléa', 'Y37280PM', to_date('26/09/2020','dd/mm/yyyy'), to_date('04/06/2021','dd/mm/yyyy'), to_date('27/11/2019','dd/mm/yyyy'), null, 7, 4, 4, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (22, 'Mélodie', 'V90236AQ', to_date('11/09/2020','dd/mm/yyyy'), to_date('17/09/2021','dd/mm/yyyy'), to_date('10/12/2018','dd/mm/yyyy'), null, 3, 2, 3, 1, 41, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (23, 'Cléa', 'K76750OM', to_date('13/04/2020','dd/mm/yyyy'), to_date('15/10/2021','dd/mm/yyyy'), to_date('19/08/2018','dd/mm/yyyy'), null, 4, 6, 4, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (24, 'Erwéi', 'G54154GK', to_date('06/11/2020','dd/mm/yyyy'), to_date('07/08/2021','dd/mm/yyyy'), to_date('17/02/2019','dd/mm/yyyy'), null, 4, 11, 4, 3, 10, 29);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (25, 'Loïc', 'B04936LD', to_date('13/12/2020','dd/mm/yyyy'), to_date('24/07/2021','dd/mm/yyyy'), to_date('31/08/2018','dd/mm/yyyy'), 'Enfermadad crónica', 5, 12, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (26, 'Marie-ève', 'L41574AJ', to_date('20/07/2020','dd/mm/yyyy'), to_date('06/09/2021','dd/mm/yyyy'), to_date('16/07/2019','dd/mm/yyyy'), null, 2, 9, 4, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (27, 'Nuó', 'D27689CR', to_date('23/09/2020','dd/mm/yyyy'), to_date('09/02/2021','dd/mm/yyyy'), to_date('03/12/2018','dd/mm/yyyy'), null, 5, 5, 3, 2, null, 33);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (28, 'Mélanie', 'R97890JJ', to_date('15/02/2020','dd/mm/yyyy'), to_date('17/03/2021','dd/mm/yyyy'), to_date('17/07/2018','dd/mm/yyyy'), null, 5, 6, 4, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (29, 'Néhémie', 'O29709RE', to_date('18/02/2020','dd/mm/yyyy'), to_date('28/06/2021','dd/mm/yyyy'), to_date('25/03/2019','dd/mm/yyyy'), null, 5, 11, 3, 3, 44, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (30, 'Estée', 'E87604CW', to_date('19/02/2020','dd/mm/yyyy'), to_date('07/12/2021','dd/mm/yyyy'), to_date('30/10/2018','dd/mm/yyyy'), 'Atropellado', 5, 4, 4, 1, 64, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (31, 'Marie-ève', 'E44374QO', to_date('05/06/2020','dd/mm/yyyy'), to_date('24/11/2021','dd/mm/yyyy'), to_date('28/06/2019','dd/mm/yyyy'), null, 2, 7, 4, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (32, 'Eloïse', 'D49543JO', to_date('04/09/2020','dd/mm/yyyy'), to_date('25/06/2021','dd/mm/yyyy'), to_date('03/04/2019','dd/mm/yyyy'), 'Enfermadad crónica', 5, 12, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (33, 'Gaëlle', 'L15837GU', to_date('18/04/2020','dd/mm/yyyy'), to_date('31/07/2021','dd/mm/yyyy'), to_date('13/05/2019','dd/mm/yyyy'), null, 7, 8, 4, 2, null, 38);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (34, 'Maëlle', 'F95295CP', to_date('20/03/2020','dd/mm/yyyy'), to_date('06/04/2021','dd/mm/yyyy'), to_date('13/01/2019','dd/mm/yyyy'), null, 2, 11, 3, 1, 35, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (35, 'Véronique', 'L66828XQ', to_date('22/01/2020','dd/mm/yyyy'), to_date('04/05/2021','dd/mm/yyyy'), to_date('11/12/2018','dd/mm/yyyy'), null, 4, 7, 4, 2, 23, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (36, 'Céline', 'K68560IB', to_date('16/05/2020','dd/mm/yyyy'), to_date('28/12/2021','dd/mm/yyyy'), to_date('28/01/2019','dd/mm/yyyy'), null, 5, 2, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (37, 'Göran', 'N16979JP', to_date('21/07/2020','dd/mm/yyyy'), to_date('17/07/2021','dd/mm/yyyy'), to_date('17/08/2019','dd/mm/yyyy'), 'Atropellado', 7, 2, 4, 1, 61, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (38, 'Séverine', 'Q44839ZO', to_date('26/12/2020','dd/mm/yyyy'), to_date('25/09/2021','dd/mm/yyyy'), to_date('29/10/2018','dd/mm/yyyy'), 'Avanzada Edad', 3, 7, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (39, 'Östen', 'P89684VS', to_date('28/08/2020','dd/mm/yyyy'), to_date('24/03/2021','dd/mm/yyyy'), to_date('10/07/2018','dd/mm/yyyy'), 'Avanzada Edad', 2, 10, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (40, 'Adélie', 'H72765ZR', to_date('14/02/2020','dd/mm/yyyy'), to_date('13/05/2021','dd/mm/yyyy'), to_date('18/06/2019','dd/mm/yyyy'), null, 4, 10, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (41, 'Wá', 'P69638RL', to_date('14/12/2020','dd/mm/yyyy'), to_date('11/08/2021','dd/mm/yyyy'), to_date('15/06/2018','dd/mm/yyyy'), 'Avanzada Edad', 5, 12, 4, 3, 27, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (42, 'Jú', 'S23810CX', to_date('07/03/2020','dd/mm/yyyy'), to_date('09/08/2021','dd/mm/yyyy'), to_date('15/04/2019','dd/mm/yyyy'), null, 2, 8, 3, 3, null, 23);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (43, 'Célia', 'R55052TC', to_date('02/07/2020','dd/mm/yyyy'), to_date('06/12/2021','dd/mm/yyyy'), to_date('27/09/2018','dd/mm/yyyy'), null, 5, 11, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (44, 'Cléa', 'H23885CS', to_date('20/08/2020','dd/mm/yyyy'), to_date('10/04/2021','dd/mm/yyyy'), to_date('12/04/2019','dd/mm/yyyy'), null, 1, 3, 3, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (45, 'Táng', 'W85497VC', to_date('20/11/2020','dd/mm/yyyy'), to_date('01/08/2021','dd/mm/yyyy'), to_date('23/03/2018','dd/mm/yyyy'), null, 4, 9, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (46, 'Kévina', 'I65750GL', to_date('21/08/2020','dd/mm/yyyy'), to_date('30/03/2021','dd/mm/yyyy'), to_date('19/12/2017','dd/mm/yyyy'), 'Avanzada Edad', 4, 3, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (47, 'Maïté', 'L65292AA', to_date('22/02/2020','dd/mm/yyyy'), to_date('11/02/2021','dd/mm/yyyy'), to_date('04/09/2018','dd/mm/yyyy'), null, 1, 4, 4, 2, null, 39);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (48, 'Estève', 'U04948DX', to_date('07/11/2020','dd/mm/yyyy'), to_date('19/10/2021','dd/mm/yyyy'), to_date('28/06/2018','dd/mm/yyyy'), null, 1, 5, 4, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (49, 'Pénélope', 'V01963QM', to_date('15/03/2020','dd/mm/yyyy'), to_date('08/05/2021','dd/mm/yyyy'), to_date('27/09/2018','dd/mm/yyyy'), 'Cancer de Higado', 4, 4, 4, 1, 48, 86);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, fecha_nacimiento, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (50, 'Yóu', 'I25016UB', to_date('08/02/2020','dd/mm/yyyy'), to_date('21/11/2021','dd/mm/yyyy'), to_date('30/12/2017','dd/mm/yyyy'), null, 5, 4, 4, 1, 14, null);


--Revision Mascoa





prompt llenando empleado
--Empleado
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (1, 'Benton', 'Denson', 'Giraths', 28073.89, to_date('23/04/2021','dd/mm/yyyy'), 'bgiraths0@adobe.com', 'OUXW250714MTLCGQ82', 1, 1, 0, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (2, 'Tawnya', 'Dorant', 'Fominov', 12078.17, to_date('30/06/2021','dd/mm/yyyy'), 'tfominov1@sourceforge.net', 'QOXD487080MNEWST42', 0, 0, 0, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (3, 'Angeli', 'Winton', 'Dewey', 15605.09, to_date('16/10/2021','dd/mm/yyyy'), 'adewey2@intel.com', 'AOPB165476FNEPRD32', 1, 0, 1, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (4, 'Kaitlin', 'Greg', 'Bowker', 15972.44, to_date('22/05/2021','dd/mm/yyyy'), 'kbowker3@paypal.com', 'EOHJ439612FSRJGF62', 1, 1, 0, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (5, 'Marylou', 'Helleker', 'Tizzard', 21546.12, to_date('24/01/2021','dd/mm/yyyy'), 'mtizzard4@wordpress.com', 'TUQZ130400MZSTAZ42', 0, 1, 1, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (6, 'Bobby', 'Presshaugh', 'Widd', 26551.34, to_date('11/12/2021','dd/mm/yyyy'), 'bwidd5@fastcompany.com', 'ROUQ280879MYNKEZ12', 0, 1, 0, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (7, 'Brunhilde', 'Donald', 'Dummer', 14817.76, to_date('03/03/2021','dd/mm/yyyy'), 'bdummer6@miibeian.gov.cn', 'TOVS424278MNEDDN42', 0, 0, 0, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (8, 'Moises', 'Lohering', 'Jenik', 15420.8, to_date('24/01/2021','dd/mm/yyyy'), 'mjenik7@joomla.org', 'FUIL684079MNEHLE12', 0, 1, 1, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (9, 'Hailee', 'Curds', 'Ropcke', 32741.77, to_date('15/03/2021','dd/mm/yyyy'), 'hropcke8@macromedia.com', 'EUQX859877MZSROH02', 0, 1, 0, 1);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (10, 'Norrie', 'Cassin', 'Guitte', 13653.11, to_date('23/06/2021','dd/mm/yyyy'), 'nguitte9@oaic.gov.au', 'OOHJ317826FNEHSH22', 1, 1, 0, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (11, 'Delcina', 'Cristofol', 'Kettlestringe', 22101.91, to_date('01/03/2021','dd/mm/yyyy'), 'dkettlestringea@squarespace.com', 'TOCS298345FZSGYH12', 0, 1, 1, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (12, 'Lula', 'MacFaell', 'Cuttin', 7808.56, to_date('11/10/2021','dd/mm/yyyy'), 'lcuttinb@usda.gov', 'GIYW466296FNEJIB92', 1, 1, 0, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (13, 'Arlee', 'Wyeld', 'Jacmar', 14539.69, to_date('23/07/2021','dd/mm/yyyy'), 'ajacmarc@nps.gov', 'FUBI733189MNEAJU42', 0, 1, 1, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (14, 'Piper', 'Wallentin', 'McIlvenna', 7605.35, to_date('18/11/2021','dd/mm/yyyy'), 'pmcilvennad@theatlantic.com', 'TIII304265MNEPGC92', 1, 1, 1, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (15, 'Aloysius', 'Callaway', 'Espinoy', 21206.11, to_date('11/08/2021','dd/mm/yyyy'), 'aespinoye@howstuffworks.com', 'UUIF164272FNEXMF42', 0, 0, 0, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (16, 'Paton', 'Pennock', 'Bowshire', 19795.17, to_date('30/05/2021','dd/mm/yyyy'), 'pbowshiref@weebly.com', 'QEOJ630815FTSKAE42', 0, 0, 1, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (17, 'Billi', 'Fearne', 'Stronack', 31097.46, to_date('14/09/2021','dd/mm/yyyy'), 'bstronackg@qq.com', 'SOUF123371FNERAK92', 1, 1, 0, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (18, 'Laura', 'Sprules', 'Treadger', 16006.38, to_date('14/06/2021','dd/mm/yyyy'), 'ltreadgerh@va.gov', 'YUHJ855444FNEPGA22', 0, 0, 1, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (19, 'Adore', 'O''Mohun', 'Palluschek', 21069.98, to_date('26/02/2021','dd/mm/yyyy'), 'apalluscheki@topsy.com', 'AUIY777556MYNQFV82', 1, 0, 1, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (20, 'Sherry', 'Stearley', 'Hazelgreave', 26364.78, to_date('05/08/2021','dd/mm/yyyy'), 'shazelgreavej@reverbnation.com', 'RAMR432083MVZHQN32', 0, 0, 1, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (21, 'Pat', 'Leist', 'McIlheran', 29306.74, to_date('02/11/2021','dd/mm/yyyy'), 'pmcilherank@netvibes.com', 'YERY776645FVZWSH72', 1, 1, 0, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (22, 'Godfry', 'Farn', 'Beamand', 13216.63, to_date('15/04/2021','dd/mm/yyyy'), 'gbeamandl@tinyurl.com', 'WILM444024FNERKX22', 0, 0, 0, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (23, 'Tim', 'Folger', 'Adshede', 10579.55, to_date('12/07/2021','dd/mm/yyyy'), 'tadshedem@kickstarter.com', 'DAZT688575FYNNMV42', 0, 0, 1, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (24, 'Linea', 'Chaffen', 'Mottinelli', 30934.42, to_date('01/06/2021','dd/mm/yyyy'), 'lmottinellin@merriam-webster.com', 'AUCB991251MSLEWT12', 0, 0, 0, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (25, 'Edie', 'Benedick', 'Narrie', 15667.71, to_date('13/10/2021','dd/mm/yyyy'), 'enarrieo@squarespace.com', 'EUIC804769FNEHEM42', 0, 0, 1, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (26, 'Iseabal', 'MacNaughton', 'Shorthill', 12616.07, to_date('11/07/2021','dd/mm/yyyy'), 'ishorthillp@msn.com', 'ZULF253832FZSCOE92', 1, 0, 0, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (27, 'Derk', 'Huntley', 'Perrygo', 23561.87, to_date('18/01/2021','dd/mm/yyyy'), 'dperrygoq@discuz.net', 'UUIX140732FNEIMT22', 1, 1, 0, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (28, 'Debi', 'Gaskarth', 'Cardenosa', 14003.18, to_date('11/08/2021','dd/mm/yyyy'), 'dcardenosar@live.com', 'WELY736292FTLUTT22', 0, 0, 1, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (29, 'Jocelin', 'Cozby', 'Francesco', 14024.59, to_date('27/08/2021','dd/mm/yyyy'), 'jfrancescos@skype.com', 'IUWH477399FZSAVO22', 1, 1, 0, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (30, 'Druci', 'Creswell', 'Pudge', 24401.11, to_date('05/09/2021','dd/mm/yyyy'), 'dpudget@furl.net', 'CIDU147208MYNYGE62', 1, 0, 0, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (31, 'Theodor', 'Woodhall', 'Wherry', 9111.25, to_date('12/06/2021','dd/mm/yyyy'), 'twherryu@mozilla.com', 'SOAC658550FZSXMZ52', 0, 0, 1, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (32, 'Ruttger', 'Gowans', 'Westover', 9829.62, to_date('09/02/2021','dd/mm/yyyy'), 'rwestoverv@1und1.de', 'NODS825021FZSEMP42', 0, 0, 0, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (33, 'Ximenes', 'Laurenzi', 'Drioli', 27337.23, to_date('27/11/2021','dd/mm/yyyy'), 'xdrioliw@a8.net', 'YOFJ934111FZSQXB22', 1, 1, 0, 2);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (34, 'Kelli', 'Stoller', 'Parlot', 8112.81, to_date('28/07/2021','dd/mm/yyyy'), 'kparlotx@princeton.edu', 'XUGE459316MTLORI62', 1, 0, 0, 1);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (35, 'Raddy', 'McLeod', 'Carlisso', 25840.6, to_date('02/11/2021','dd/mm/yyyy'), 'rcarlissoy@multiply.com', 'COTA873785MNEEHV62', 1, 0, 1, 1);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (36, 'Codi', 'Hundell', 'MacAnelley', 16633.07, to_date('21/05/2021','dd/mm/yyyy'), 'cmacanelleyz@shinystat.com', 'CUPP437335FNEDVM32', 0, 0, 1, 3);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (37, 'Laurena', 'Donnelly', 'Innocenti', 14130.19, to_date('10/08/2021','dd/mm/yyyy'), 'linnocenti10@fda.gov', 'EETX907214FZSCLI72', 0, 1, 0, 1);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (38, 'Oates', 'Feechan', 'Timny', 26651.99, to_date('30/03/2021','dd/mm/yyyy'), 'otimny11@blinklist.com', 'CUGR708316FZSIRW72', 1, 0, 0, 1);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (39, 'Gavra', 'Pardal', 'Gonsalvez', 25148.07, to_date('15/10/2021','dd/mm/yyyy'), 'ggonsalvez12@xrea.com', 'DUAX717141FNEIWA32', 0, 0, 0, 4);
insert into empleado (empleado_id, nombre, apellido_paterno, apellido_materno, sueldo, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo, centro_operativo_id) values (40, 'Jeniece', 'Ellesmere', 'Arends', 13113.32, to_date('18/09/2021','dd/mm/yyyy'), 'jarends13@canalblog.com', 'WUVN152932MNEKYL32', 0, 0, 1, 2);
prompt llenando grado academico
--Grado academico
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (1, 'Licenciatura en Administración', to_date('26/07/2021','dd/mm/yyyy'), 'TEIF779673AYUPHF77', 1);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (2, 'Licenciatura en Turismo', to_date('23/06/2021','dd/mm/yyyy'), 'LSZP747234DKKKEJ12', 2);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (3, 'Licenciatura en Contaduria', to_date('04/08/2021','dd/mm/yyyy'), 'KFBZ407444BTMMMA18', 3);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (4, 'Licenciatura en Administración', to_date('02/01/2021','dd/mm/yyyy'), 'DRIN208996HACWQD92', 4);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (5, 'Licenciatura en Contaduria', to_date('11/06/2021','dd/mm/yyyy'), 'AIED159354ITQRLB26', 5);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (6, 'Licenciatura en Contaduria', to_date('13/01/2021','dd/mm/yyyy'), 'QUSZ678222UPUQVB93', 6);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (7, 'Licenciatura en Administración', to_date('26/02/2021','dd/mm/yyyy'), 'HIIH802764RZOQIB40', 7);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (8, 'Licenciatura en Enfermeria', to_date('31/12/2020','dd/mm/yyyy'), 'WNGB240170ODCDTU54', 8);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (9, 'Licenciatura en Contaduria', to_date('08/07/2021','dd/mm/yyyy'), 'HDWG885698JRLTJI02', 9);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (10, 'Licenciatura en Enfermeria', to_date('31/07/2021','dd/mm/yyyy'), 'ILMK626844FOYHTQ08', 10);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (11, 'Licenciatura en Turismo', to_date('31/03/2021','dd/mm/yyyy'), 'MDJQ524925MBTRBD32', 11);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (12, 'Licenciatura en Contaduria', to_date('11/09/2021','dd/mm/yyyy'), 'HNZC340186JZUHPI07', 12);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (13, 'Licenciatura en Turismo', to_date('28/02/2021','dd/mm/yyyy'), 'EZSZ710752VJSOBB37', 13);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (14, 'Licenciatura en Veterinaria', to_date('07/07/2021','dd/mm/yyyy'), 'UIML887348HBERPT52', 14);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (15, 'Licenciatura en Veterinaria', to_date('25/04/2021','dd/mm/yyyy'), 'ANAQ274791AGMFHH58', 15);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (16, 'Licenciatura en Veterinaria', to_date('31/01/2021','dd/mm/yyyy'), 'RFMQ447642FYVCUC69', 16);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (17, 'Licenciatura en Enfermeria', to_date('25/10/2021','dd/mm/yyyy'), 'UFYM770214TJNVQL21', 17);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (18, 'Licenciatura en Contaduria', to_date('16/10/2021','dd/mm/yyyy'), 'WZIH969961ABMABP52', 18);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (19, 'Licenciatura en Administración', to_date('07/05/2021','dd/mm/yyyy'), 'GFIG515391DGYKHK76', 19);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (20, 'Licenciatura en Enfermeria', to_date('15/11/2021','dd/mm/yyyy'), 'QHIR441773WPHSWF18', 20);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (21, 'Licenciatura en Administración', to_date('22/11/2021','dd/mm/yyyy'), 'IMAC286111IKJIQI21', 21);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (22, 'Licenciatura en Enfermeria', to_date('05/12/2021','dd/mm/yyyy'), 'SNKD380787EKTYNV59', 22);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (23, 'Licenciatura en Contaduria', to_date('27/08/2021','dd/mm/yyyy'), 'YEPN226102YSAZOK97', 23);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (24, 'Licenciatura en Enfermeria', to_date('04/09/2021','dd/mm/yyyy'), 'ERXD635567HTTRBI61', 24);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (25, 'Licenciatura en Administración', to_date('09/10/2021','dd/mm/yyyy'), 'JAGO526189GQFBEV34', 25);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (26, 'Licenciatura en Administración', to_date('04/02/2021','dd/mm/yyyy'), 'GXRR760356VBKBFZ10', 26);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (27, 'Licenciatura en Contaduria', to_date('26/11/2021','dd/mm/yyyy'), 'GCXA898483UCDWHZ83', 27);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (28, 'Licenciatura en Administración', to_date('10/03/2021','dd/mm/yyyy'), 'ZSWJ174794PEQZDN40', 28);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (29, 'Licenciatura en Veterinaria', to_date('03/10/2021','dd/mm/yyyy'), 'CIFB819943LRZTWR17', 29);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (30, 'Licenciatura en Enfermeria', to_date('26/04/2021','dd/mm/yyyy'), 'OOMA053168XJMMRS07', 30);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (31, 'Licenciatura en Turismo', to_date('24/10/2021','dd/mm/yyyy'), 'ARHB256559JBSTIW98', 31);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (32, 'Licenciatura en Veterinaria', to_date('23/06/2021','dd/mm/yyyy'), 'SAEE769551LMHCXL80', 32);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (33, 'Licenciatura en Administración', to_date('13/05/2021','dd/mm/yyyy'), 'IEFL298183PCPUWX57', 33);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (34, 'Licenciatura en Turismo', to_date('15/02/2021','dd/mm/yyyy'), 'KKDF646665BFTAQJ65', 34);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (35, 'Licenciatura en Enfermeria', to_date('16/09/2021','dd/mm/yyyy'), 'ITIP242723PTYPSH99', 35);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (36, 'Licenciatura en Veterinaria', to_date('22/02/2021','dd/mm/yyyy'), 'LIFF945418KECDIL26', 36);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (37, 'Licenciatura en Administración', to_date('25/01/2021','dd/mm/yyyy'), 'BWHU736274HFDNYA80', 37);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (38, 'Licenciatura en Contaduria', to_date('06/09/2021','dd/mm/yyyy'), 'OINU511038APXZAG20', 38);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (39, 'Licenciatura en Veterinaria', to_date('21/07/2021','dd/mm/yyyy'), 'FBXR672107DMXNAU38', 39);
insert into GRADO_ACADEMICO (grado_academico_id, titulo, fecha_titulacion, cedula_profesional, empleado_id) values (40, 'Licenciatura en Administración', to_date('13/11/2021','dd/mm/yyyy'), 'UKTW778072XYJNEB77', 40);

prompt OK! Datos cargados
commit;


