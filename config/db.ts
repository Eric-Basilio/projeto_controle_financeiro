import { Pool } from 'pg';

const pool = new Pool ({
    user: 'MeuUsuario',
    host: 'localhost',
    database: 'MeuUsuario',
    password: 'MinhaSenha',
    port: 5432,
});

export default pool;