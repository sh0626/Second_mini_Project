import mysql from "mysql2";

const db = mysql.createConnection({
  host: '15.165.120.29',
  user: 'a',
  password: '1234',
  database: 'mydb',
  port:'3306'
});

 
export default db;