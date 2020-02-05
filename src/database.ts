import { createPool, Pool } from "mysql2/promise";


export async function connect(): Promise<Pool>{
    const connection = await createPool({
        host: 'us-cdbr-iron-east-02.cleardb.net',
        user: 'b177a2417b890a',
        password: 'd6ca3f29',
        database: 'heroku_3fba89bbdcdc706',
        connectionLimit: 10
    })
    return connection;
}

/* host: 'localhost',
user: 'root',
database: 'db_sistema',
connectionLimit: 10 */

