const { Pool } = require("pg");
const pool = new Pool({
    user: "postgres",
    host: "localhost",
    database: "helpdesk_db",
    password: "08Noviembre",
    port: 5432
});
module.exports = pool;