--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-28
--@Descripción:     Script para realizar la carga inicial todas las tablas de la base de datos.ABORT

--TODO:
--Llenar con datos de mockaroo xd
--CAMBIAR A TIPOS DE DATOS VALIDOS los booleanos

connect rj_proy_admin/rj_admin
set serveroutput on 
 
prompt Llenando datos para cliente

--Cliente  (100 registros)
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (1, 'Salome', 'Halwell', 'Swinburn', '8591 Pleasure Park', 'sswinburn0', 'QhapS7');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (2, 'Leoline', 'Abramski', 'Edser', '16 Onsgard Plaza', 'ledser1', 'n4XB1ESWfiR');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (3, 'Engelbert', 'Skitch', 'Estabrook', '03 Di Loreto Way', 'eestabrook2', '0nByQ3pRlEqI');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (4, 'Salomi', 'Atkirk', 'Windows', '820 Oak Valley Crossing', 'swindows3', 'hgdhQsl');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (5, 'Bettina', 'Habbershon', 'Simes', '67598 Northland Drive', 'bsimes4', '0Qrq40');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (6, 'Thornie', 'Wride', 'Breston', '527 Nobel Hill', 'tbreston5', '0Uu6kQEW1DQQ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (7, 'Amalia', 'Cant', 'Lawrey', '66 Superior Parkway', 'alawrey6', 'ReIIum');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (8, 'Sharity', 'Grimsdyke', 'Tibbetts', '7 Center Road', 'stibbetts7', 'PVmpXJ0');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (9, 'Jude', 'Bamsey', 'Gillean', '8870 Oak Crossing', 'jgillean8', 'XxZ5buz');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (10, 'Vernen', 'Golsby', 'Di Lucia', '99 Forest Run Center', 'vdilucia9', 'D7LxtB2Biu');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (11, 'Dunn', 'Kernaghan', 'Ziemecki', '34 Havey Street', 'dziemeckia', 'ZreVFlv');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (12, 'Eliza', 'Mazin', 'Chavey', '85952 Mendota Point', 'echaveyb', 'K3LS9HIc8t');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (13, 'Kellen', 'McLean', 'Staggs', '6919 Fordem Lane', 'kstaggsc', 'Z2ZOLvx8');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (14, 'Elle', 'Craven', 'Titchener', '439 Sunbrook Avenue', 'etitchenerd', '94BSbjrI');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (15, 'Editha', 'Pillinger', 'Zanetto', '614 Ridgeview Way', 'ezanettoe', '9zJWYL');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (16, 'Lorens', 'Beecroft', 'Vermer', '72 Brentwood Pass', 'lvermerf', 'qGSlfPlR');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (17, 'Adrea', 'Cade', 'Havik', '7540 Independence Hill', 'ahavikg', 'cgP1uj');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (18, 'Farrell', 'Heindrick', 'Hickisson', '280 Sherman Drive', 'fhickissonh', 'XkohWEjOSmD');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (19, 'Lolita', 'Kinnin', 'Gooms', '74 American Ash Circle', 'lgoomsi', 'aImgjigGH');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (20, 'Jada', 'Urwen', 'Touhig', '14 Lillian Hill', 'jtouhigj', 'e2JuqUdybh');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (21, 'Cally', 'Moat', 'Dowthwaite', '5642 Pond Center', 'cdowthwaitek', '2dW64k9gk3RX');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (22, 'Marlowe', 'Sandland', 'Hawkridge', '36 Sachs Circle', 'mhawkridgel', 'esrOHznk');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (23, 'Cornell', 'Smart', 'Burkinshaw', '50641 Springs Street', 'cburkinshawm', 'ByyUPjjjxY');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (24, 'Weidar', 'Mandrake', 'Fortman', '395 Sachs Court', 'wfortmann', 'fMbDZDBas8K');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (25, 'Janice', 'Hadleigh', 'Gilmartin', '1520 Dottie Pass', 'jgilmartino', 'kruxybok');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (26, 'Beverlie', 'Postans', 'Tumini', '2 Hollow Ridge Lane', 'btuminip', 'P3cqblvD');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (27, 'Massimiliano', 'Broadey', 'Pomfrey', '72 Anzinger Lane', 'mpomfreyq', 'qlA5z1TBo8Lw');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (28, 'Tabby', 'Shwenn', 'Van Oort', '13 Stang Avenue', 'tvanoortr', '691HMJqwQw');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (29, 'Marcelo', 'Gosnold', 'Wyndham', '74 Monterey Court', 'mwyndhams', 'zjreoLLtkxLi');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (30, 'Marquita', 'Gladdor', 'Boxell', '268 Eastwood Place', 'mboxellt', 'jqJiJ0r1');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (31, 'Joannes', 'Pyett', 'Rangall', '1536 Green Ridge Crossing', 'jrangallu', 'cqxgHK');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (32, 'Blinnie', 'Bertomier', 'Levy', '5642 Walton Road', 'blevyv', 'qKXQmmoz0s0');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (33, 'Cassey', 'Wellstead', 'Higgoe', '86 Oak Valley Court', 'chiggoew', 'Vbaa5t');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (34, 'Petronilla', 'Warnes', 'Saywood', '817 Anderson Hill', 'psaywoodx', 'zsRpfelO');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (35, 'Dolph', 'Dwyr', 'Streets', '93087 Veith Point', 'dstreetsy', 'DA15xE4');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (36, 'Riannon', 'Bitcheno', 'Surman', '897 Bluestem Crossing', 'rsurmanz', '8irF1Dx2');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (37, 'Graig', 'Prys', 'Wilman', '73912 Cody Park', 'gwilman10', 'ZXRqt5lBT1');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (38, 'Gabey', 'China', 'Mosby', '5 Amoth Terrace', 'gmosby11', 'EagzcoeMcCiy');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (39, 'Glyn', 'Fereday', 'Killner', '420 Jana Plaza', 'gkillner12', 'c11wdTB');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (40, 'Oriana', 'Pydcock', 'Edens', '76165 Ridgeway Terrace', 'oedens13', 'qwSSzy');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (41, 'Kristian', 'Baddoe', 'Broad', '66 Ronald Regan Parkway', 'kbroad14', 'xAnYlXr7LW2');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (42, 'Diana', 'Smaling', 'Boak', '4922 Eagle Crest Parkway', 'dboak15', 'fLLt6PwqWFuK');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (43, 'Barnett', 'Cristofori', 'Hollier', '4 Barby Drive', 'bhollier16', 'Uv4BD5Ckr');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (44, 'Carter', 'Obee', 'Danbury', '20935 Duke Drive', 'cdanbury17', 'w8kvnaH');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (45, 'Goldy', 'Gerardet', 'Gomm', '5 Cody Parkway', 'ggomm18', 'rB0qr98V');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (46, 'Deva', 'Restieaux', 'Milesap', '98 Brown Trail', 'dmilesap19', 'x4VAtA');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (47, 'Kayle', 'Eakley', 'Baude', '2 Gerald Place', 'kbaude1a', 'Es3kIxNQFfBd');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (48, 'Dex', 'Falconbridge', 'Yannoni', '2409 Green Ridge Avenue', 'dyannoni1b', 'ne8n5eCP4DR');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (49, 'Hillel', 'Barrus', 'Iseton', '1082 Forest Dale Lane', 'hiseton1c', 'KodEBB5Fe');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (50, 'Elwyn', 'Larder', 'Ariss', '00 Swallow Terrace', 'eariss1d', 'szSEfbpiw');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (51, 'Clarice', 'O''Dougherty', 'Rilton', '291 Havey Avenue', 'crilton1e', 'SDYPy0NYOSpg');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (52, 'Marlyn', 'Balderstone', 'Szachniewicz', '4 Mallard Place', 'mszachniewicz1f', 'jlm1Wg7J');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (53, 'Billy', 'D''Alwis', 'Eades', '197 Moulton Place', 'beades1g', 'yi2oj5');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (54, 'Tawnya', 'Manicom', 'Wakefield', '38896 Farwell Road', 'twakefield1h', 't3rFBLCoMCf');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (55, 'Jamey', 'Matousek', 'Tschiersch', '334 Stephen Trail', 'jtschiersch1i', 'IBj66TtlNrg');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (56, 'Cord', 'Donnison', 'Charlo', '44 Marcy Street', 'ccharlo1j', 'CpeMYEi7K2KT');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (57, 'Isabeau', 'Pidon', 'Haldene', '66 Steensland Alley', 'ihaldene1k', '4jbYJ1');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (58, 'Penrod', 'Bust', 'Brisland', '38 Lunder Junction', 'pbrisland1l', 'ha7om6K');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (59, 'Reinwald', 'Sonschein', 'Di Iorio', '3096 International Parkway', 'rdiiorio1m', 'xIclEPEq');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (60, 'Margarethe', 'Jacklin', 'Coper', '74 Monument Pass', 'mcoper1n', 'VWYSxkbqwf');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (61, 'Robinett', 'Krzyzanowski', 'Arnoll', '703 Pepper Wood Trail', 'rarnoll1o', 'KSt6Ek');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (62, 'Cherida', 'Giacopazzi', 'Cursey', '78 Prairie Rose Drive', 'ccursey1p', 'p0QaNxwm');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (63, 'Shirlee', 'Pablos', 'Stockhill', '69 Esch Court', 'sstockhill1q', '70U6rqOeVn');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (64, 'Felisha', 'Millbank', 'Rainy', '963 Hanover Point', 'frainy1r', 'oZ6tSGNjhitI');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (65, 'Antonietta', 'Jerams', 'Whysall', '56 Hooker Center', 'awhysall1s', 'Uh0axP');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (66, 'Carmen', 'Seagrove', 'Espada', '85 Goodland Drive', 'cespada1t', 'RPI8eY0A60Ra');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (67, 'Hyacinthe', 'Leek', 'Peizer', '32 Scofield Court', 'hpeizer1u', 'RVCsErg5q');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (68, 'Jeff', 'O''Regan', 'Laverty', '3 Onsgard Lane', 'jlaverty1v', 'Sx2Dy4t0S7N');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (69, 'Lenard', 'Double', 'Bliven', '87493 Cambridge Way', 'lbliven1w', 'qeIyY9Uy');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (70, 'Marice', 'Pantecost', 'Sharman', '7 Alpine Alley', 'msharman1x', '2dtvyq');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (71, 'Dniren', 'MacInherney', 'Lamy', '250 Pierstorff Alley', 'dlamy1y', 'oRhPbU');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (72, 'Koral', 'Adamovsky', 'Tebbett', '1260 Northfield Circle', 'ktebbett1z', 'E19HcZ');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (73, 'Amandi', 'Honsch', 'Weatherill', '7866 Del Sol Road', 'aweatherill20', 'BeF2uO41K');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (74, 'Desmund', 'De La Coste', 'Fluck', '3872 Marcy Point', 'dfluck21', 'JXZIxAlChrg');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (75, 'Noby', 'Woodvine', 'Coombe', '7 Mallory Hill', 'ncoombe22', 'nb9ER1ANO');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (76, 'Carola', 'Herreran', 'Claiton', '60787 Sunfield Park', 'cclaiton23', 'e396WsGUS');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (77, 'Clayson', 'Dew', 'Delucia', '9286 American Ash Street', 'cdelucia24', 'UZMFHl');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (78, 'Car', 'Duquesnay', 'Simonin', '82098 Aberg Drive', 'csimonin25', 'VP3WyhTo');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (79, 'Kendra', 'Steade', 'Croux', '458 Blue Bill Park Parkway', 'kcroux26', 'c2rGey');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (80, 'Mellisa', 'MacMechan', 'McAreavey', '71 Michigan Park', 'mmcareavey27', 'C3CioF06px');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (81, 'Patience', 'Rosendorf', 'Tyrrell', '913 Old Shore Road', 'ptyrrell28', 'QqHdlkAYNDDd');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (82, 'Gisella', 'Brunskill', 'Noods', '16333 Lakeland Avenue', 'gnoods29', 'DFVwiUk');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (83, 'Gerianna', 'Chattey', 'Archer', '686 Grover Alley', 'garcher2a', 'mspcwSwEz5YY');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (84, 'Shirley', 'Dalla', 'Worsham', '21617 Village Park', 'sworsham2b', 'H4TaUMfNcE');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (85, 'Tamarah', 'Bazoche', 'Pierri', '44 7th Circle', 'tpierri2c', 'm90dnimAfg');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (86, 'Tab', 'Kynder', 'Casero', '41288 Packers Junction', 'tcasero2d', 'PfOB9v2I9');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (87, 'Gratiana', 'Marflitt', 'Bodiam', '8411 Michigan Alley', 'gbodiam2e', 'Sq0Kb7');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (88, 'Ingaborg', 'Largen', 'Cready', '7574 Lillian Terrace', 'icready2f', 'OMTh8SNzSf');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (89, 'Gherardo', 'Spottswood', 'Fruin', '0745 Roth Center', 'gfruin2g', 'WKglRRHgi');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (90, 'Sonja', 'Spradbrow', 'Ewbanke', '68247 Brentwood Center', 'sewbanke2h', 'p8wAv4');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (91, 'Kerry', 'Yosifov', 'Norcross', '071 Sunnyside Pass', 'knorcross2i', 'fYrEa6ob');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (92, 'Chad', 'Stobbs', 'Loveard', '5 Reindahl Point', 'cloveard2j', 'NOmV9S');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (93, 'Bettina', 'Langdridge', 'Larvor', '424 Fieldstone Hill', 'blarvor2k', 'EBJksGRnMdx');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (94, 'Bernelle', 'Gabriel', 'Klemencic', '7 5th Trail', 'bklemencic2l', 'BZl6926T0b');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (95, 'Osgood', 'McCloughlin', 'Von Gladbach', '92923 Warrior Way', 'ovongladbach2m', 'nVeGSNKXW');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (96, 'Melba', 'Heindrich', 'Woolfoot', '05 Mariners Cove Terrace', 'mwoolfoot2n', 'Wic5pM');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (97, 'Eustacia', 'Greschke', 'Fashion', '650 Eastlawn Way', 'efashion2o', 'K7JNwMx');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (98, 'Obediah', 'Navein', 'Gerbl', '9382 Green Way', 'ogerbl2p', 'ZoW1Ew9JIaE');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (99, 'Agneta', 'Bentame', 'Siemantel', '658 Becker Lane', 'asiemantel2q', '2FdMAsy9WRkt');
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, direccion, usuario, contraseña) values (100, 'Maisie', 'Tschierasche', 'Bonafant', '536 Rigney Plaza', 'mbonafant2r', 'qiAdin3eC');


--Estatus Mascota
insert into estatus_mascota(estatus_mascota_id, descripcion) values(1, 'EN_REFUGIO');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(2, 'DISPONIBLE_PARA_ADOPCIÓN');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(3, 'SOLICITADA_PARA_ADOPCIÓN');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(4, 'ADOPTADA');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(5, 'ENFERMA');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(6, 'FALLECIDA_EN_REFUGIO');
insert into estatus_mascota(estatus_mascota_id, descripcion) values(7, 'FALLECIDA_EN_HOGAR');

--Tipo Mascota
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(1, 'ave','canario', 3);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(2, 'mamifero','perro', 2);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(3, 'mamifero', 'gato', 3);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(4, 'mamifero', 'hamster', 4);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(5, 'mamifero', 'ratón', 2);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(6, 'Reptil', 'Serpiente', 4);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(7, 'Reptil', 'Tortuga', 3);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(8, 'Reptil', 'Lagartija', 2);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(9, 'Amfibio', 'Rana', 3);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(10, 'Amfibio', 'Axolote', 5);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(11, 'Pez', 'Pez de Aguadulce', 2);
insert into tipo_mascota(tipo_mascota_id, nombre_tipo, sub_categoria, nivel_cuidado) values(12, 'Pez', 'Pez Tropical', 4);


--Origen Mascota
insert into origen(origen_id, descripcion) values(1, 'DONADA_POR_CLIENTE');
insert into origen(origen_id, descripcion) values(2, 'ABANDONADA_EN_VIA_PÚBLICA');
insert into origen(origen_id, descripcion) values(3, 'NACIDA_EN_CAUTIVERIO');

--Mascota
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (1, 'Maëly', 'Q31576VG', 'to_date(02/04/2021),dd/mm/yyyy', to_date(21/06/2021),dd/mm/yyyy, null, 1, 5, 3, 3, 88, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (2, 'Håkan', 'J42165FY', 'to_date(06/11/2021),dd/mm/yyyy', to_date(08/05/2021),dd/mm/yyyy, 'Cancer de Higado', 7, 2, 4, 2, 70, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (3, 'Maëlann', 'U86568FC', 'to_date(19/03/2021),dd/mm/yyyy', 'to_date(29/03/2021),dd/mm/yyyy', 'Atropellado', 6, 7, 4, 2, 2, 40);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (4, 'Mylène', 'A74606WI', 'to_date(22/03/2021),dd/mm/yyyy', 'to_date(25/03/2021),dd/mm/yyyy', null, 1, 3, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (5, 'Athéna', 'E61983EC', 'to_date(15/08/2021),dd/mm/yyyy', 'to_date(26/12/2021),dd/mm/yyyy', null, 5, 11, 3, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (6, 'Inès', 'E50268GA', 'to_date(03/03/2021),dd/mm/yyyy', 'to_date(29/01/2021),dd/mm/yyyy', null, 5, 11, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (7, 'Léane', 'I38569VX', 'to_date(29/07/2021),dd/mm/yyyy', 'to_date(03/03/2021),dd/mm/yyyy', null, 2, 8, 4, 2, 22, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (8, 'Loïs', 'V19091DQ', 'to_date(19/05/2021),dd/mm/yyyy', 'to_date(30/08/2021),dd/mm/yyyy', null, 5, 7, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (9, 'Lyséa', 'F04107QR', 'to_date(20/02/2021),dd/mm/yyyy', 'to_date(10/03/2021),dd/mm/yyyy', null, 1, 7, 3, 2, 24, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (10, 'Géraldine', 'V61852AG', 'to_date(07/08/2021),dd/mm/yyyy', 'to_date(20/01/2021),dd/mm/yyyy', null, 7, 3, 3, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (11, 'Maëlann', 'M99390CA', 'to_date(07/09/2021),dd/mm/yyyy', 'to_date(26/09/2021),dd/mm/yyyy', 'Enfermadad crónica', 7, 12, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (12, 'Maëlys', 'J06971XB', 'to_date(26/01/2021),dd/mm/yyyy', 'to_date(17/08/2021),dd/mm/yyyy', null, 6, 11, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (13, 'Audréanne', 'Z42171VB', 'to_date(13/12/2021),dd/mm/yyyy', 'to_date(28/04/2021),dd/mm/yyyy', null, 2, 4, 3, 2, 6, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (14, 'Maïwenn', 'A36731NS', 'to_date(15/02/2021),dd/mm/yyyy', 'to_date(28/06/2021),dd/mm/yyyy', 'Enfermadad crónica', 1, 2, 3, 3, null, 76);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (15, 'Clélia', 'Q58636XH', 'to_date(15/06/2021),dd/mm/yyyy', 'to_date(17/06/2021),dd/mm/yyyy', 'Enfermadad crónica', 2, 12, 3, 1, null, 36);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (16, 'Célestine', 'E04732EX', 'to_date(22/03/2021),dd/mm/yyyy', 'to_date(27/06/2021),dd/mm/yyyy', 'Enfermadad crónica', 2, 1, 4, 3, 55, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (17, 'Chloé', 'Y85053HH', 'to_date(10/04/2021),dd/mm/yyyy', 'to_date(16/01/2021),dd/mm/yyyy', null, 5, 3, 3, 2, 50, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (18, 'Chloé', 'E53158GV', 'to_date(14/07/2021),dd/mm/yyyy', 'to_date(03/09/2021),dd/mm/yyyy', null, 2, 8, 4, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (19, 'Clélia', 'M93730AN', 'to_date(07/03/2021),dd/mm/yyyy', 'to_date(13/09/2021),dd/mm/yyyy', null, 7, 4, 4, 2, null, 7);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (20, 'Åke', 'Z03231EB', 'to_date(06/12/2021),dd/mm/yyyy', 'to_date(28/01/2021),dd/mm/yyyy', null, 6, 5, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (21, 'Clémentine', 'U66363MT', 'to_date(11/07/2021),dd/mm/yyyy', 'to_date(19/02/2021),dd/mm/yyyy', null, 1, 10, 3, 3, 15, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (22, 'Nélie', 'D65340IH', 'to_date(01/12/2021),dd/mm/yyyy', 'to_date(22/04/2021),dd/mm/yyyy', 'Avanzada Edad', 6, 6, 4, 1, 38, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (23, 'Danièle', 'F11822FM', 'to_date(18/04/2021),dd/mm/yyyy', 'to_date(24/10/2021),dd/mm/yyyy', null, 2, 4, 3, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (24, 'Inès', 'Y66967US', 'to_date(16/11/2021),dd/mm/yyyy', 'to_date(15/10/2021),dd/mm/yyyy', null, 3, 4, 4, 3, null, 85);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (25, 'Cléa', 'T30358RF', 'to_date(24/04/2021),dd/mm/yyyy', 'to_date(29/11/2021),dd/mm/yyyy', null, 1, 12, 4, 3, 10, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (26, 'Nuó', 'O17125LY', 'to_date(02/02/2021),dd/mm/yyyy', 'to_date(09/09/2021),dd/mm/yyyy', null, 6, 11, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (27, 'Yè', 'B67378BQ', 'to_date(16/01/2021),dd/mm/yyyy', 'to_date(21/08/2021),dd/mm/yyyy', 'Enfermadad crónica', 2, 12, 3, 3, 37, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (28, 'Léane', 'J90073TY', 'to_date(04/11/2021),dd/mm/yyyy', 'to_date(13/02/2021),dd/mm/yyyy', 'Enfermadad crónica', 1, 2, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (29, 'Eloïse', 'O83732WD', 'to_date(06/02/2021),dd/mm/yyyy', 'to_date(26/11/2021),dd/mm/yyyy', null, 6, 10, 4, 2, 50, 70);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (30, 'Aimée', 'E07709IJ', 'to_date(20/10/2021),dd/mm/yyyy', 'to_date(08/01/2021),dd/mm/yyyy', 'Enfermadad crónica', 5, 2, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (31, 'Naéva', 'J95996XQ', 'to_date(25/04/2021),dd/mm/yyyy', 'to_date(22/01/2021),dd/mm/yyyy', null, 5, 11, 4, 2, 70, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (32, 'Béatrice', 'X24395CR', 'to_date(08/07/2021),dd/mm/yyyy', 'to_date(02/05/2021),dd/mm/yyyy', null, 4, 11, 3, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (33, 'Marylène', 'X15916QL', 'to_date(19/07/2021),dd/mm/yyyy', 'to_date(02/12/2021),dd/mm/yyyy', 'Cancer de Higado', 7, 6, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (34, 'Gwenaëlle', 'Y57879AC', 'to_date(24/07/2021),dd/mm/yyyy', 'to_date(20/02/2021),dd/mm/yyyy', 'Enfermadad crónica', 4, 7, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (35, 'Adélie', 'G85681TK', 'to_date(13/07/2021),dd/mm/yyyy', 'to_date(13/10/2021),dd/mm/yyyy', 'Cancer de Higado', 7, 1, 4, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (36, 'Simplifiés', 'U02786JW', 'to_date(06/11/2021),dd/mm/yyyy', 'to_date(20/05/2021),dd/mm/yyyy', null, 4, 4, 4, 3, null, 80);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (37, 'Noëlla', 'H19901BQ', 'to_date(20/03/2021),dd/mm/yyyy', 'to_date(09/05/2021),dd/mm/yyyy', null, 7, 12, 3, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (38, 'Maï', 'U60095OU', 'to_date(28/08/2021),dd/mm/yyyy', 'to_date(09/09/2021),dd/mm/yyyy', null, 4, 10, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (39, 'Kallisté', 'U72749PG', 'to_date(24/01/2021),dd/mm/yyyy', 'to_date(05/12/2021),dd/mm/yyyy', null, 2, 2, 4, 1, 20, 9);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (40, 'Simplifiés', 'V33520FQ', 'to_date(23/01/2021),dd/mm/yyyy', 'to_date(14/02/2021),dd/mm/yyyy', null, 2, 9, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (41, 'Néhémie', 'C49308FG', 'to_date(28/01/2021),dd/mm/yyyy', 'to_date(10/08/2021),dd/mm/yyyy', null, 3, 8, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (42, 'Tú', 'P85044ZX', 'to_date(26/03/2021),dd/mm/yyyy', 'to_date(13/07/2021),dd/mm/yyyy', null, 4, 8, 4, 3, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (43, 'Méghane', 'V61844PS', 'to_date(09/06/2021),dd/mm/yyyy', 'to_date(24/04/2021),dd/mm/yyyy', null, 2, 8, 4, 2, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (44, 'Danièle', 'N00257WA', 'to_date(19/08/2021),dd/mm/yyyy', 'to_date(03/07/2021),dd/mm/yyyy', null, 4, 5, 4, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (45, 'Lyséa', 'L06850AW', 'to_date(26/02/2021),dd/mm/yyyy', 'to_date(02/01/2021),dd/mm/yyyy', 'Atropellado', 5, 1, 4, 1, 87, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (46, 'Mélia', 'J43333YU', 'to_date(22/08/2021),dd/mm/yyyy', 'to_date(23/07/2021),dd/mm/yyyy', null, 6, 8, 4, 1, 89, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (47, 'Béatrice', 'H28656QS', 'to_date(17/05/2021),dd/mm/yyyy', 'to_date(06/01/2021),dd/mm/yyyy', null, 5, 2, 4, 3, null, 49);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (48, 'Edmée', 'J88604RO', 'to_date(16/06/2021),dd/mm/yyyy', 'to_date(20/04/2021),dd/mm/yyyy', 'Atropellado', 4, 10, 3, 1, null, null);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (49, 'Garçon', 'T35066ZY', 'to_date(21/02/2021),dd/mm/yyyy', 'to_date(02/12/2021),dd/mm/yyyy', null, 5, 9, 4, 3, null, 34);
insert into mascota (mascota_id, nombre, folio, fecha_ingreso, fecha_estatus, causa_muerte, estatus_mascota_id, tipo_mascota_id, centro_operativo_id, origen_id, cliente_id, donador_id) values (50, 'Liè', 'M23039NS', 'to_date(04/10/2021),dd/mm/yyyy', 'to_date(28/01/2021),dd/mm/yyyy', null, 3, 8, 4, 2, 48, 58);


--Adopcion

--Centro operativo
insert into centro_operativo(centro_operativo_id, nombre, direccion, latitud, longitud, es_refugio, es_clinica, es_oficina ) 
                      values(1, 'PET-HOME La loma', 'Calle 1 #128, Colonia X Estado Y', 18.99, -98.04, 0,1,1);

insert into centro_operativo(centro_operativo_id, nombre, direccion, latitud, longitud, es_refugio, es_clinica, es_oficina ) 
                      values(2, 'Oficina PET-HOME Plaza X', 'Av. 23 #1024, Colonia Z, Estado Y', 20.99, -99.04, 0,0,1);

insert into centro_operativo(centro_operativo_id, nombre, direccion, latitud, longitud, es_refugio, es_clinica, es_oficina ) 
                      values(3, 'Clinica PET-HOME Circuito Interior', 'Pino Suarez #23, Colonia A Estado Y', 19.051, -98.06, 0,1,0);

insert into centro_operativo(centro_operativo_id, nombre, direccion, latitud, longitud,es_refugio, es_clinica, es_oficina ) 
                      values(4, 'PET-HOME La loma', 'Calle 43 #256, Colonia X Estado Y', 19.47, -97.67, 1,0,0);

--Grado academico
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (2, 'Licenciatura en Contaduria', to_date(15/04/2021, dd/mm/yyyy), 'VHMS847634LZRBXT00', 2);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (3, 'Licenciatura en Turismo', to_date(09/02/2021, dd/mm/yyyy), 'FQJM797910FBJWXS59', 3);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (4, 'Licenciatura en Veterinaria', to_date(30/08/2021, dd/mm/yyyy), 'EIZE913395VOWBVW39', 4);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (5, 'Licenciatura en Veterinaria', to_date(09/12/2021, dd/mm/yyyy), 'SFSQ788960SLMDDL47', 5);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (6, 'Licenciatura en Contaduria', to_date(08/10/2021, dd/mm/yyyy), 'RNAE138748EYPOOT85', 6);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (7, 'Licenciatura en Turismo', to_date(02/04/2021, dd/mm/yyyy), 'FPVB226740QQFRIL04', 7);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (8, 'Licenciatura en Turismo', to_date(08/12/2021, dd/mm/yyyy), 'GNZH981273TSGDZQ75', 8);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (9, 'Licenciatura en Veterinaria', to_date(04/10/2021, dd/mm/yyyy), 'PGHI404324KPOZEU53', 9);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (10, 'Licenciatura en Enfermeria', to_date(16/11/2021, dd/mm/yyyy), 'DCQW345674NVUGQK81', 10);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (11, 'Licenciatura en Veterinaria', to_date(13/09/2021, dd/mm/yyyy), 'EUSA462727RHQNUY57', 11);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (12, 'Licenciatura en Contaduria', to_date(24/05/2021, dd/mm/yyyy), 'CLDF300991KFSGGI26', 12);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (13, 'Licenciatura en Veterinaria', to_date(08/10/2021, dd/mm/yyyy), 'HJME965007GLNUGV10', 13);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (14, 'Licenciatura en Contaduria', to_date(20/01/2021, dd/mm/yyyy), 'YPSO283497TGRUPO39', 14);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (15, 'Licenciatura en Administración', to_date(12/11/2021, dd/mm/yyyy), 'XDLY346490SOFBNP08', 15);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (16, 'Licenciatura en Administración', to_date(12/05/2021, dd/mm/yyyy), 'BOHA019421OBBAGZ78', 16);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (17, 'Licenciatura en Veterinaria', to_date(01/03/2021, dd/mm/yyyy), 'GNVH663623VTTRIF96', 17);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (18, 'Licenciatura en Enfermeria', to_date(03/05/2021, dd/mm/yyyy), 'HGBK764000RTTKZP53', 18);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (19, 'Licenciatura en Turismo', to_date(28/12/2021, dd/mm/yyyy), 'ERWH397302HEKMXE06', 19);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (20, 'Licenciatura en Contaduria', to_date(23/03/2021, dd/mm/yyyy), 'NUSN957648XVLFIO68', 20);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (21, 'Licenciatura en Turismo', to_date(18/01/2021, dd/mm/yyyy), 'TYYN145996ARMHKL47', 21);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (22, 'Licenciatura en Contaduria', to_date(25/04/2021, dd/mm/yyyy), 'SWAW224210BUQFZX39', 22);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (23, 'Licenciatura en Contaduria', to_date(18/01/2021, dd/mm/yyyy), 'VPAD118744NWGBFO96', 23);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (24, 'Licenciatura en Veterinaria', to_date(02/07/2021, dd/mm/yyyy), 'ZMHT474060NVTIIG91', 24);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (25, 'Licenciatura en Enfermeria', to_date(28/07/2021, dd/mm/yyyy), 'UISQ302395BYZMNK32', 25);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (26, 'Licenciatura en Veterinaria', to_date(30/07/2021, dd/mm/yyyy), 'CWMA990290FQAEAP40', 26);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (27, 'Licenciatura en Contaduria', to_date(08/06/2021, dd/mm/yyyy), 'JDWU688488MLFKQP32', 27);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (28, 'Licenciatura en Administración', to_date(03/12/2021, dd/mm/yyyy), 'AVPR405829NLWLWZ33', 28);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (29, 'Licenciatura en Enfermeria', to_date(06/07/2021, dd/mm/yyyy), 'KXOM759800FPTYBM88', 29);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (30, 'Licenciatura en Veterinaria', to_date(28/05/2021, dd/mm/yyyy), 'KSXG060574SINYPX63', 30);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (31, 'Licenciatura en Enfermeria', to_date(28/09/2021, dd/mm/yyyy), 'EUKH574679AROFXT57', 31);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (32, 'Licenciatura en Veterinaria', to_date(11/06/2021, dd/mm/yyyy), 'BEBN588249QASGJY05', 32);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (33, 'Licenciatura en Administración', to_date(27/11/2021, dd/mm/yyyy), 'MEWV760224BHZJFK12', 33);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (34, 'Licenciatura en Administración', to_date(11/10/2021, dd/mm/yyyy), 'VGYK903819PWDQDI72', 34);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (35, 'Licenciatura en Administración', to_date(09/05/2021, dd/mm/yyyy), 'FPAE503815UWAYXT02', 35);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (36, 'Licenciatura en Veterinaria', to_date(27/08/2021, dd/mm/yyyy), 'RYDG438816CMCQZG61', 36);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (37, 'Licenciatura en Administración', to_date(25/12/2021, dd/mm/yyyy), 'KPPS870768YMBUKJ49', 37);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (38, 'Licenciatura en Turismo', to_date(09/01/2021, dd/mm/yyyy), 'VMLT107978RFWQLV69', 38);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (39, 'Licenciatura en Veterinaria', to_date(04/09/2021, dd/mm/yyyy), 'KSLD259154FPDBPZ53', 39);
insert into grado_academico (grado_academico_id, titulo, fecha_titulacion, cedula_profecional, empleado_id) values (40, 'Licenciatura en Enfermeria', to_date(07/08/2021, dd/mm/yyyy), 'EDEJ570784HEXEMW91', 40);


--

--Empleado
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (1, 'Deonne', 'Langhorn', 'Truter', 26211.09, '4/23/2021', 'dtruter0@reverbnation.com', 'QIZO424229MNEIZR22', false, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (2, 'Dorice', 'Ramsier', 'Scotchmer', 10801.02, '4/13/2021', 'dscotchmer1@tmall.com', 'VUOL735428FYNZER02', true, false, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (3, 'Blinni', 'Martensen', 'Hallums', 28750.01, '1/27/2021', 'bhallums2@miibeian.gov.cn', 'UUHP441216FNEAJA92', false, false, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (4, 'Britt', 'Goodisson', 'Tomczak', 29275.72, '5/29/2021', 'btomczak3@elpais.com', 'MUDU950717MNERCJ22', true, false, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (5, 'Nertie', 'Hartley', 'Maier', 31282.77, '12/14/2021', 'nmaier4@goodreads.com', 'BOTF652180FNEROC82', true, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (6, 'Jordanna', 'Hallgath', 'Chasier', 10832.87, '6/1/2021', 'jchasier5@hibu.com', 'SADG196009FYNHYY42', true, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (7, 'Cissiee', 'Veal', 'Busch', 11247.35, '11/10/2021', 'cbusch6@webnode.com', 'JUVK965841MNEIST92', true, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (8, 'Rex', 'Dowzell', 'Franken', 9467.82, '1/3/2021', 'rfranken7@twitter.com', 'QUFF579476MYNNAV82', true, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (9, 'Orelee', 'Slides', 'Wharlton', 23058.22, '7/20/2021', 'owharlton8@tamu.edu', 'IOQK185010FNEEOR62', false, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (10, 'Gage', 'Poznanski', 'Crooks', 12274.06, '8/10/2021', 'gcrooks9@samsung.com', 'OUES414455MNECQW42', true, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (11, 'Alwyn', 'Jorin', 'Simonini', 32997.29, '6/20/2021', 'asimoninia@barnesandnoble.com', 'MUOV861845FYNKLX72', true, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (12, 'Prissie', 'Wilden', 'Kitchenside', 33243.14, '9/8/2021', 'pkitchensideb@spiegel.de', 'MONM242965MZSAEA92', false, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (13, 'Grove', 'Stubbert', 'Vitet', 27147.36, '2/2/2021', 'gvitetc@printfriendly.com', 'VUOG646476MNEKTV32', true, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (14, 'Abigael', 'Cianni', 'Mowsdell', 20788.66, '5/12/2021', 'amowsdelld@networksolutions.com', 'HUNR813567MZSWZK82', false, false, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (15, 'Thomas', 'Sayburn', 'Wraxall', 7831.13, '1/27/2021', 'twraxalle@purevolume.com', 'TISE110680MNERTL32', false, false, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (16, 'Chloe', 'MacAdam', 'Morris', 29530.1, '12/6/2021', 'cmorrisf@google.com.au', 'YUSJ490650FZSQIT02', true, false, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (17, 'Shermie', 'Mayhew', 'Griffithe', 27326.72, '1/31/2021', 'sgriffitheg@constantcontact.com', 'YUAD326674FNEOEH62', false, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (18, 'Jory', 'Morrel', 'Zanuciolii', 14854.16, '4/12/2021', 'jzanucioliih@qq.com', 'IUSI508398FNEXLP42', false, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (19, 'Trefor', 'Arghent', 'Grindle', 20756.81, '5/3/2021', 'tgrindlei@columbia.edu', 'MIXD280626MNEUUH62', true, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (20, 'Cynthie', 'Laughrey', 'Matteoli', 27259.57, '4/8/2021', 'cmatteolij@mac.com', 'CUYI674767FNENIK82', false, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (21, 'Brockie', 'Cloutt', 'Popeley', 30430.38, '6/24/2021', 'bpopeleyk@sbwire.com', 'IIGK176324FZSEGE12', true, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (22, 'Irena', 'Dabner', 'Pratte', 13367.69, '1/20/2021', 'iprattel@github.io', 'WOSP578394FZSWNM72', false, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (23, 'Torrance', 'Blain', 'Gager', 17273.03, '12/19/2021', 'tgagerm@google.ca', 'HUBQ957823FZSKNS72', true, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (24, 'Jean', 'Loades', 'Steeden', 24297.5, '6/5/2021', 'jsteedenn@t-online.de', 'PUEN004101FNENLM02', false, false, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (25, 'Ive', 'Sleep', 'Gowen', 23026.5, '7/31/2021', 'igoweno@whitehouse.gov', 'UAXA294196MNEGAD52', false, false, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (26, 'Karrah', 'Geck', 'Grandison', 13461.72, '8/24/2021', 'kgrandisonp@imageshack.us', 'VUJV689348FYNXWP22', true, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (27, 'Hestia', 'Meysham', 'Schwartz', 19151.57, '2/15/2021', 'hschwartzq@upenn.edu', 'TEIY360213FNESCK22', true, false, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (28, 'Renaud', 'Mundle', 'Sellack', 20202.04, '7/17/2021', 'rsellackr@slate.com', 'OUDG684069FNECDR12', false, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (29, 'Pat', 'Studders', 'Simecek', 11024.04, '3/1/2021', 'psimeceks@tmall.com', 'BOOO873442MNEHIF82', false, false, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (30, 'Blair', 'Surcomb', 'Morsom', 33479.93, '9/3/2021', 'bmorsomt@cdbaby.com', 'KESE188299MVZFCD52', true, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (31, 'Gerrie', 'Dibsdale', 'Aguirrezabala', 33882.52, '11/9/2021', 'gaguirrezabalau@com.com', 'HORA933268FYNZXY02', true, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (32, 'Alfonso', 'Roderham', 'McRannell', 31871.39, '7/24/2021', 'amcrannellv@abc.net.au', 'REWV659424MNEZDZ72', true, true, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (33, 'Artemis', 'Noblet', 'Dene', 13428.76, '10/8/2021', 'adenew@infoseek.co.jp', 'AUWR999644MNEEVQ42', true, false, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (34, 'Angelita', 'Rohlfs', 'D''Aguanno', 31576.41, '4/13/2021', 'adaguannox@engadget.com', 'JOOQ441508FVZBFT72', false, false, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (35, 'Chantalle', 'Juschka', 'Davys', 16234.87, '10/2/2021', 'cdavysy@eepurl.com', 'POQH118266FVZDED52', false, false, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (36, 'Normy', 'Woodroofe', 'Tink', 12024.3, '5/4/2021', 'ntinkz@dot.gov', 'HUGD368601MNESWS92', false, false, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (37, 'Sergeant', 'Arstingall', 'Alvy', 11246.08, '3/15/2021', 'salvy10@smugmug.com', 'CORD567488FYNBIR52', false, false, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (38, 'Noelyn', 'Tidmarsh', 'Schutte', 12314.49, '4/20/2021', 'nschutte11@theatlantic.com', 'HOYK709221MNEFKL42', false, true, false);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (39, 'Putnam', 'Andraud', 'Brucker', 21770.87, '10/23/2021', 'pbrucker12@hc360.com', 'MOHW246149MNEISG62', false, false, true);
insert into empleado (empleado_id, nombre, ap_paterno, ap_materno, sueldo_mensual, fecha_ingreso, email, CURP, es_veterinario, es_gerente, es_administrativo) values (40, 'Celestine', 'Murrow', 'Fibbitts', 18634.84, '8/13/2021', 'cfibbitts13@spiegel.de', 'SOVC369771FYNXYE52', false, false, false);







