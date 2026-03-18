import pool from "./config/db";

    async function teste (){
        try {
            const res = await pool.query('SELECT NOW()');

            console.log('Conexão ao banco de dados feita com sucesso');
            console.log("🕒 Hora no banco de dados:", res.rows[0].now);
        }
        catch (erro) {
            console.error("Erro na conexão ao banco de dados");
            const erroFortmato = erro as Error;
            console.error(erroFortmato.message);
        }
    }

teste();