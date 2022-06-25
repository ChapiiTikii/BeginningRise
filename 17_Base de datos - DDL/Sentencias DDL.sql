-- ADSI - 2395873
-- CREATE USER "Grupo6"@"localhost" IDENTIFIED BY "BeginningRise654";
-- GRANT ALL ON *.* TO "Grupo6"@"localhost" WITH GRANT OPTION;
-- Usuario: Grupo6@localhost
-- Pass: BeginningRise654

-- Creación de tablas
CREATE DATABASE beginningrise;
USE beginningrise;
CREATE TABLE tipo_documento(t_doc VARCHAR(10) PRIMARY KEY, nombre_t_doc VARCHAR(40) NOT NULL);
CREATE TABLE componentes (id_componentes VARCHAR(10) PRIMARY KEY, componente VARCHAR(30) NOT NULL);
CREATE TABLE tiendas (nit_tienda VARCHAR(11) PRIMARY KEY, nombre_tienda VARCHAR(40) NOT NULL, direccion_tienda VARCHAR(40) NOT NULL, telefono_tienda BIGINT(10) NOT NULL, email_tienda VARCHAR(45) NOT NULL UNIQUE, contraseña_tienda VARCHAR(45) NOT NULL UNIQUE, fecha_creacion DATE DEFAULT NULL, fecha_actualizacion DATE DEFAULT NULL);
CREATE TABLE persona (tipo_documento_persona VARCHAR(10) NOT NULL, FOREIGN KEY (tipo_documento_persona) REFERENCES tipo_documento(t_doc), num_doc_persona VARCHAR(10) not null, nombre_persona VARCHAR(68), email_persona VARCHAR(45) NOT NULL PRIMARY KEY, contraseña_persona VARCHAR(45) NOT NULL UNIQUE, fecha_creacion DATETIME NOT NULL, fecha_actualizacion DATETIME NOT NULL, foto_perfil BLOB);
CREATE TABLE clientes (email_cliente VARCHAR(45) NOT NULL, FOREIGN KEY  (email_cliente) REFERENCES persona (email_persona), direccion_cliente VARCHAR (40) NOT NULL, telefono_cliente BIGINT(10) NOT NULL);
CREATE TABLE administradores(email_administrador varchar (45) not null PRIMARY KEY, FOREIGN KEY(email_administrador)REFERENCES persona(email_persona));
CREATE TABLE marcas (id_marca VARCHAR(4) PRIMARY KEY, marca VARCHAR(15) NOT NULL UNIQUE, estado TINYINT NOT NULL);
CREATE TABLE modelos (id_modelos VARCHAR(4) PRIMARY KEY, modelo VARCHAR(64) NOT NULL, id_marca VARCHAR(4) NOT NULL, FOREIGN KEY (id_marca) REFERENCES marcas(id_marca));
CREATE TABLE procesadores (id_procesador varchar (10) NOT NULL, FOREIGN KEY (id_procesador) REFERENCES componentes(id_componentes), frecuencia_base_procesador VARCHAR(8) NOT NULL, frecuencia_turbo_procesador VARCHAR(8) NOT NULL, cache_procesador VARCHAR(10) NOT NULL);
CREATE TABLE pantallas (id_pantalla VARCHAR(8) NOT NULL, FOREIGN KEY (id_pantalla) REFERENCES componentes(id_componentes), tasa_refresco_pantalla VARCHAR (5) NOT NULL, resolucion_pantalla VARCHAR(15) NOT NULL);
CREATE TABLE grafica (id_grafica VARCHAR(8) NOT NULL, FOREIGN KEY (id_grafica) REFERENCES componentes(id_componentes), vram_grafica VARCHAR(10) NOT NULL);
CREATE TABLE productos (serial_producto VARCHAR(20) NOT NULL PRIMARY KEY, id_modelo VARCHAR(4) NOT NULL, FOREIGN KEY (id_modelo) REFERENCES modelos(id_modelos), id_procesador VARCHAR (8) NOT NULL, FOREIGN KEY (id_procesador) REFERENCES procesadores(id_procesador), id_pantalla VARCHAR (8) NOT NULL, FOREIGN KEY (id_pantalla) REFERENCES pantallas(id_pantalla), precio INT NOT NULL, fecha_creacion DATETIME NOT NULL, fecha_actualizacion DATETIME NOT NULL, imagen BLOB);
CREATE TABLE almacenamiento (id_almacenamiento varchar(8) NOT NULL, FOREIGN KEY (id_almacenamiento) REFERENCES componentes(id_componentes), interfaz varchar(5) not null);
CREATE TABLE productos_almacenamiento (serial_producto VARCHAR(20), FOREIGN KEY (serial_producto) REFERENCES productos(serial_producto), id_almacenamiento VARCHAR(8), FOREIGN KEY (id_almacenamiento) REFERENCES almacenamiento(id_almacenamiento));
CREATE TABLE memoria_ram (id_ram VARCHAR(8) NOT NULL, FOREIGN KEY (id_ram) REFERENCES componentes(id_componentes), frecuencia_ram varchar(8) NOT NULL);
CREATE TABLE productos_ram (serial_producto VARCHAR(20), FOREIGN KEY (serial_producto) REFERENCES productos(serial_producto), id_ram VARCHAR(8), FOREIGN KEY (id_ram) REFERENCES memoria_ram(id_ram));
CREATE TABLE tiendas_productos (tiendas_nit_tienda VARCHAR(11), FOREIGN KEY (tiendas_nit_tienda) REFERENCES tiendas(nit_tienda), productos_serial VARCHAR(20), FOREIGN KEY (productos_serial) REFERENCES productos(serial_producto));
CREATE TABLE clientes_productos (email_cliente VARCHAR(45) NOT NULL, FOREIGN KEY (email_cliente) REFERENCES clientes(email_cliente),serial_producto VARCHAR(20), FOREIGN KEY (serial_producto) REFERENCES productos(serial_producto));
CREATE TABLE productos_graficas (id_grafica VARCHAR(8), FOREIGN KEY (id_grafica) REFERENCES grafica(id_grafica), serial_producto VARCHAR(20), FOREIGN KEY (serial_producto) REFERENCES productos(serial_producto));
CREATE TABLE ventas (id_ventas VARCHAR(8) PRIMARY KEY, email_cliente varchar(45)not null, FOREIGN KEY (email_cliente) REFERENCES clientes(email_cliente), nit_tienda varchar(11)NOT NULL, FOREIGN KEY (nit_tienda) REFERENCES tiendas (nit_tienda), serial_producto varchar (20) NOT NULL, FOREIGN KEY(serial_producto) REFERENCES productos (serial_producto), fecha DATETIME );
CREATE TABLE carrito(email_cliente varchar(45) NOT NULL PRIMARY KEY, FOREIGN KEY (email_cliente) REFERENCES clientes(email_cliente), serial_producto varchar(20) NOT NULL, FOREIGN KEY (serial_producto) REFERENCES productos (serial_producto), fecha_actualizacion DATE NULL, fecha_creacion DATE NULL);