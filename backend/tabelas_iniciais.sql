create table if not exists usuario (
  id_usuario SERIAL PRIMARY KEY,
  nome_usuario VARCHAR(100) UNIQUE,
  senha_hash VARCHAR(100),
  saldo NUMERIC(10,2));

  create table if not exists banco (
  id_banco SERIAL PRIMARY KEY,
  id_usuario INT,
  nome_banco VARCHAR(100),
  total_divida NUMERIC(10,2),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
  );

create table if not exists compra (
  id_compra SERIAL PRIMARY KEY,
  id_usuario INT,
  id_banco INT,
  dono_compra VARCHAR(100),
  valor_compra NUMERIC(10,2),
  compra_parcelada BOOLEAN,
  numero_parcelas INT,
  data_compra DATE,
  status_compra BOOLEAN, /* pago  ou não pago */
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  FOREIGN KEY (id_banco) REFERENCES banco(id_banco)
  );

  CREATE TABLE IF NOT EXISTS categoria_compra (
    id_categoria_compra SERIAL PRIMARY KEY,
    id_compra INT,
    categoria VARCHAR(50),
  )

  create table if not exists dono_compra (
    id_dono SERIAL PRIMARY KEY,
    id_compra INT,
    nome_dono VARCHAR(100),
    FOREIGN KEY (id_compra) REFERENCES compra(id_compra),
    FOREIGN KEY (id_banco) REFERENCES banco(id_banco)
    );

