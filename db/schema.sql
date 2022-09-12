/*  CONSULTAS   */

/*  Creando las categorias, agregando el 'id' como llave primaria    */ 
CREATE TABLE categorias (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

/* Creando la tabla gastos, asignando 'id_categoria' como llave foranea, 
                        referenaciando al 'id' de  la tabla categorias */
CREATE TABLE gastos (
    id int NOT NULL AUTO_INCREMENT,
    titulo varchar(255) NOT NULL,
    id_categoria int NOT NULL,
    gasto float(5,2) NOT NULL,
    fecha date NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);