-- ADSI - 2395873
-- CREATE USER "Grupo6"@"localhost" IDENTIFIED BY "BeginningRise654";
-- GRANT ALL ON *.* TO "Grupo6"@"localhost" WITH GRANT OPTION;
-- Usuario: Grupo6@localhost
-- Pass: BeginningRise654

-- Inserción de datos

INSERT INTO tipo_documento(t_doc, nombre_t_doc) VALUES ('C.C.', 'Cédula de Ciudadanía');
INSERT INTO tipo_documento(t_doc, nombre_t_doc) VALUES ('C.C.', 'Cédula de Extranjería');
INSERT INTO tipo_documento(t_doc, nombre_t_doc) VALUES ('T.I.', 'Tarjeta de Identidad');



INSERT INTO componentes(id_componentes, componente) VALUES ('INTEL_01', 'Intel Core i7-11800H');
INSERT INTO componentes(id_componentes, componente) VALUES ('AMD_02', 'Ryzen 5 5600H');
INSERT INTO componentes(id_componentes, componente) VALUES ('INTEL_06', 'Intel Core i5-8250U');

INSERT INTO componentes(id_componentes, componente) VALUES ('SSD_001', 'Unidad M.2 512GB');
INSERT INTO componentes(id_componentes, componente) VALUES ('SSD_004', 'Unidad SSD 128 GB');
INSERT INTO componentes(id_componentes, componente) VALUES ('HDD_001', 'Unidad HDD 1TB');

INSERT INTO componentes(id_componentes, componente) VALUES ('GI_1', 'Gráficos integrados AMD Radeon RX Vega 7');
INSERT INTO componentes(id_componentes, componente) VALUES ('GD_1', 'Gráficos NVIDIA GeForce RTX 3050');
INSERT INTO componentes(id_componentes, componente) VALUES ('GI_4', 'Gráficos Integrados Intel UHD Graphics 600');

INSERT INTO componentes(id_componentes, componente) VALUES ('RAM_011', '8GB de RAM DDR4');
INSERT INTO componentes(id_componentes, componente) VALUES ('RAM_014', '4 GB de RAM DDR4');
INSERT INTO componentes(id_componentes, componente) VALUES ('RAM_015', '16 GB de RAM DDR4');

INSERT INTO componentes(id_componentes, componente) VALUES ('SC_2001', '15.6" 60Hz');
INSERT INTO componentes(id_componentes, componente) VALUES ('SC_2003', '17.3" 144Hz');
INSERT INTO componentes(id_componentes, componente) VALUES ('SC_2004', '15.6" 144Hz');



INSERT INTO tiendas(nit_tienda, nombre_tienda, direccion_tienda, telefono_tienda, email_tienda, contraseña_tienda, fecha_creacion, fecha_actualizacion) VALUES ('901101602-8', 'Vampix', 'Avenida 23 #76 - 43', '3244228549', 'vampixt0re_45@gmail.com', 'vampix55443987', CURDATE(), CURDATE());
INSERT INTO tiendas(nit_tienda, nombre_tienda, direccion_tienda, telefono_tienda, email_tienda, contraseña_tienda, fecha_creacion, fecha_actualizacion) VALUES ('901101602-6', 'GLA TECNOLOGIA SAS', 'Diagonal 39 #3 - 33', '3151469468', 'gl4tech48@outlook.com', 'gl4t3ch5864', CURDATE(), CURDATE());
INSERT INTO tiendas(nit_tienda, nombre_tienda, direccion_tienda, telefono_tienda, email_tienda, contraseña_tienda, fecha_creacion, fecha_actualizacion) VALUES ('900924451-9', 'KAMALEON LTDA', 'Carrera 10 #85 - 9', '3125391912', 'klt40n35@hotmail.com', 'KAMALEONLTDA3125391912.', CURDATE(), CURDATE());




INSERT INTO persona(tipo_documento_persona, num_doc_persona, nombre_persona, email_persona, contraseña_persona, fecha_creacion, fecha_actualizacion, foto_perfil) VALUES ('C.C.', '1030525089', 'Adriana Carolina Hernández Monterroza', 'adr_hermon4495@outlook.com', '1234', CURDATE(), CURDATE(), '');
INSERT INTO persona(tipo_documento_persona, num_doc_persona, nombre_persona, email_persona, contraseña_persona, fecha_creacion, fecha_actualizacion, foto_perfil) VALUES ('C.C.', '1018424181', 'Camilo Alberto Cortés Montejo', 'cam_cormon8326@gmail.com', '123456', CURDATE(), CURDATE(), '');
INSERT INTO persona(tipo_documento_persona, num_doc_persona, nombre_persona, email_persona, contraseña_persona, fecha_creacion, fecha_actualizacion, foto_perfil) VALUES ('C.E.', 'E-3718248', 'Daniel Castiblanco Salgado', 'dan_cassal6238@gmail.com', '12345', CURDATE(), CURDATE(), '');
INSERT INTO persona(tipo_documento_persona, num_doc_persona, nombre_persona, email_persona, contraseña_persona, fecha_creacion, fecha_actualizacion, foto_perfil) VALUES ('C.E.', 'E-4194180', 'Gabriel Felipe Herrera Moreno', 'gab_hermor2154@gmail.com', 'felipeherrera', CURDATE(), CURDATE(), '');
INSERT INTO persona(tipo_documento_persona, num_doc_persona, nombre_persona, email_persona, contraseña_persona, fecha_creacion, fecha_actualizacion, foto_perfil) VALUES ('T.I.', '1026255233', 'Hugo Camargo', 'hug_camvar6943@gmail.com', 'hugocamargo', CURDATE(), CURDATE(), '');
INSERT INTO persona(tipo_documento_persona, num_doc_persona, nombre_persona, email_persona, contraseña_persona, fecha_creacion, fecha_actualizacion, foto_perfil) VALUES ('T.I.', '1024518426', 'Laura Fernanda Rodríguez', 'lau_rodtor3699@gmail.com', '55555555', CURDATE(), CURDATE(), '');



INSERT INTO clientes (email_cliente, direccion_cliente, telefono_cliente) VALUES ('dan_cassal6238@gmail.com', 'Carrera 50 #60 - 34', '3129578823');
INSERT INTO clientes (email_cliente, direccion_cliente, telefono_cliente) VALUES ('hug_camvar6943@gmail.com', 'Diagonal 122 #122 - 24', '3206857273');
INSERT INTO clientes (email_cliente, direccion_cliente, telefono_cliente) VALUES ('lau_rodtor3699@gmail.com', 'Avenida 10 #164 - 11', '3501678520');



INSERT INTO administradores(email_administrador) VALUES ('adr_hermon4495@outlook.com');
INSERT INTO administradores(email_administrador) VALUES ('cam_cormon8326@gmail.com');
INSERT INTO administradores(email_administrador) VALUES ('gab_hermor2154@gmail.com');



INSERT INTO marcas(id_marca, marca, estado) VALUES ('M_01', 'Lenovo', '1');
INSERT INTO marcas(id_marca, marca, estado) VALUES ('M_02', 'Acer', '1');
INSERT INTO marcas(id_marca, marca, estado) VALUES ('M_03', 'MSI', '1');



INSERT INTO modelos(id_modelos, modelo, id_marca) VALUES ('MO_01', 'GF76', 'M_03');
INSERT INTO modelos(id_modelos, modelo, id_marca) VALUES ('MO_02', 'IdeaPad Gaming 3 82K200M7LM', 'M_01');
INSERT INTO modelos(id_modelos, modelo, id_marca) VALUES ('MO_03', 'Aspire 5 51G', 'M_02');



INSERT INTO procesadores(id_procesador, frecuencia_base_procesador, frecuencia_turbo_procesador, cache_procesador) VALUES ('INTEL_01', '2.3GHz', '4.6GHz', '24MB');
INSERT INTO procesadores(id_procesador, frecuencia_base_procesador, frecuencia_turbo_procesador, cache_procesador) VALUES ('AMD_02', '3.3GHz', '4.2GHz', '16MB');
INSERT INTO procesadores(id_procesador, frecuencia_base_procesador, frecuencia_turbo_procesador, cache_procesador) VALUES ('INTEL_06', '1.6GHz', '3.4GHz', '6MB');



INSERT INTO pantallas(id_pantalla, tasa_refresco_pantalla, resolucion_pantalla) VALUES ('SC_2001', '60Hz', '1366x768');
INSERT INTO pantallas(id_pantalla, tasa_refresco_pantalla, resolucion_pantalla) VALUES ('SC_2003', '144Hz', '1920x1080');
INSERT INTO pantallas(id_pantalla, tasa_refresco_pantalla, resolucion_pantalla) VALUES ('SC_2004', '144Hz', '1920x1080');



INSERT INTO grafica(id_grafica , vram_grafica) VALUES ('GI_1', '--');
INSERT INTO grafica(id_grafica , vram_grafica) VALUES ('GD_1', '4GB GDDR6');
INSERT INTO grafica(id_grafica , vram_grafica) VALUES ('GI_4', '--');



INSERT INTO productos(serial_producto, id_modelo, id_procesador, id_pantalla, precio, imagen, fecha_creacion, fecha_actualizacion) VALUES ('FDN65X42188F395', 'MO_02', 'AMD_02', 'SC_2004', '4099900', 'prod1.jpg', CURDATE(), CURDATE());
INSERT INTO productos(serial_producto, id_modelo, id_procesador, id_pantalla, precio, imagen, fecha_creacion, fecha_actualizacion) VALUES ('HHR35H66794A888', 'MO_01', 'INTEL_01', 'SC_2003', '6999900', 'prod2.jpg', CURDATE(), CURDATE());
INSERT INTO productos(serial_producto, id_modelo, id_procesador, id_pantalla, precio, imagen, fecha_creacion, fecha_actualizacion) VALUES ('NXH2MALC313400', 'MO_03', 'INTEL_06', 'SC_2001', '1549900', 'prod3.jpg', CURDATE(), CURDATE());


INSERT INTO almacenamiento(id_almacenamiento, interfaz) VALUES ('SSD_001', 'PCIe');
INSERT INTO almacenamiento(id_almacenamiento, interfaz) VALUES ('SSD_004', 'SATA');
INSERT INTO almacenamiento(id_almacenamiento, interfaz) VALUES ('HDD_001', 'SATA');


INSERT INTO productos_almacenamiento(serial_producto, id_almacenamiento) VALUES ('FDN65X42188F395', 'SSD_004');
INSERT INTO productos_almacenamiento(serial_producto, id_almacenamiento) VALUES ('FDN65X42188F395', 'HDD_001');
INSERT INTO productos_almacenamiento(serial_producto, id_almacenamiento) VALUES ('HHR35H66794A888', 'SSD_001');
INSERT INTO productos_almacenamiento(serial_producto, id_almacenamiento) VALUES ('NXH2MALC313400', 'HDD_001');



INSERT INTO memoria_ram(id_ram, frecuencia_ram) VALUES ('RAM_011', '3000MHz');
INSERT INTO memoria_ram(id_ram, frecuencia_ram) VALUES ('RAM_014', '2400MHz');
INSERT INTO memoria_ram(id_ram, frecuencia_ram) VALUES ('RAM_015', '3200MHz');



INSERT INTO productos_ram(serial_producto, id_ram) VALUES ('FDN65X42188F395', 'RAM_011');
INSERT INTO productos_ram(serial_producto, id_ram) VALUES ('HHR35H66794A888', 'RAM_015');
INSERT INTO productos_ram(serial_producto, id_ram) VALUES ('NXH2MALC313400', 'RAM_014');



INSERT INTO tiendas_productos(productos_serial, tiendas_nit_tienda) VALUES ('FDN65X42188F395', '901101602-8');
INSERT INTO tiendas_productos(productos_serial, tiendas_nit_tienda) VALUES ('HHR35H66794A888', '901101602-8');
INSERT INTO tiendas_productos(productos_serial, tiendas_nit_tienda) VALUES ('HHR35H66794A888', '900924451-9');
INSERT INTO tiendas_productos(productos_serial, tiendas_nit_tienda) VALUES ('NXH2MALC313400', '900924451-9');
INSERT INTO tiendas_productos(productos_serial, tiendas_nit_tienda) VALUES ('NXH2MALC313400', '901101602-6');
INSERT INTO tiendas_productos(productos_serial, tiendas_nit_tienda) VALUES ('HHR35H66794A888', '901101602-6');
INSERT INTO tiendas_productos(productos_serial, tiendas_nit_tienda) VALUES ('FDN65X42188F395', '901101602-6');


INSERT INTO clientes_productos(email_cliente, serial_producto) VALUES ('dan_cassal6238@gmail.com', 'FDN65X42188F395');
INSERT INTO clientes_productos(email_cliente, serial_producto) VALUES ('hug_camvar6943@gmail.com', 'HHR35H66794A888');
INSERT INTO clientes_productos(email_cliente, serial_producto) VALUES ('lau_rodtor3699@gmail.com', 'NXH2MALC313400');



INSERT INTO productos_graficas(id_grafica, serial_producto) VALUES ('GI_1', 'FDN65X42188F395');
INSERT INTO productos_graficas(id_grafica, serial_producto) VALUES ('GD_1', 'HHR35H66794A888');
INSERT INTO productos_graficas(id_grafica, serial_producto) VALUES ('GI_4', 'NXH2MALC313400');



INSERT INTO carrito(email_cliente, serial_producto, fecha_creacion, fecha_actualizacion) VALUES ('dan_cassal6238@gmail.com', 'FDN65X42188F395', CURDATE(), CURDATE());
INSERT INTO carrito(email_cliente, serial_producto, fecha_creacion, fecha_actualizacion) VALUES ('hug_camvar6943@gmail.com', 'HHR35H66794A888', CURDATE(), CURDATE());
INSERT INTO carrito(email_cliente, serial_producto, fecha_creacion, fecha_actualizacion) VALUES ('lau_rodtor3699@gmail.com', 'NXH2MALC313400', CURDATE(), CURDATE());



INSERT INTO ventas(id_ventas, email_cliente, nit_tienda, serial_producto, fecha) VALUES ('V_0001', 'dan_cassal6238@gmail.com', '901101602-6', 'FDN65X42188F395', CURDATE());
INSERT INTO ventas(id_ventas, email_cliente, nit_tienda, serial_producto, fecha) VALUES ('V_0012', 'hug_camvar6943@gmail.com', '901101602-8', 'HHR35H66794A888', CURDATE());
INSERT INTO ventas(id_ventas, email_cliente, nit_tienda, serial_producto, fecha) VALUES ('V_0033', 'lau_rodtor3699@gmail.com', '900924451-9', 'NXH2MALC313400', CURDATE());