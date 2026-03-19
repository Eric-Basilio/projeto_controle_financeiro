import { bancosInterface } from "../interfaces/bancos.interfaces";
import pool from '../../config/db'

class bancoModel {
    async salvarBanco (banco: bancosInterface) {
        const id_banco = banco.id_banco;
        const id_usuario = banco.id_usuario;
        const nome_banco = banco.nome_banco;
        console.log(`Salvando o banco ${banco.nome_banco} no banco de dados...`);

        const sql = 'INSERT INTO banco (id_usuario, nome_banco) VALUES ($1, $2)';
        const values = [banco.id_usuario, banco.nome_banco];

        await pool.query(sql, values);
};


    async lerBanco (banco: bancosInterface){
        
    }


}