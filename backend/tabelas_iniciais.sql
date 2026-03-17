creat table if not exists usuario {
  id_usuario int primary key,
  nome_usuario varchar (100),
  senha_hassh varchar (100),
  saldo float,
} 

creat table if not exists compra {
  id_compra int primary key,
  id_usuario int,
  id_banco int,
  categoria_compra varchar (100),
  dono_compra varchar (100),
  valor_compra float,
  compra_parcelada boolean,
  numero_parcelas int,
  data_compra date,
  status_compra boolean, /* pago  ou não pago */
  }

  creat table if not exists dono_compra {
    id_dono int primary key,
    id_compra int,
    id_banco int,
    total_divida_dono float,
    }



  creat table if not exists banco {
  id_banco int [primary key]
  id_compra int
  id_usuario int
  nome_banco varchar (100)
  total_divida float
  }

Ref: "usuario"."id_usuario" < "compra"."id_usuario"

Ref: "banco"."id_banco" < "compra"."id_banco"

Ref: "banco"."id_usuario" < "usuario"."id_usuario"



Ref: "banco"."id_compra" < "compra"."id_compra"

Ref: "dono_compra"."id_compra" < "compra"."id_compra"

Ref: "dono_compra"."id_banco" < "banco"."id_banco"