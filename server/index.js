import pg from "pg"

const {Client} = pg


const client = new Client({
  connectionString: "postgres://root:root@localhost:5432/live024"
})


await client.connect();

const res = await client.query(`
  SELECT c.*,
  JSON_AGG(ord) as orders
  FROM customers as c
   LEFT JOIN  orders as ord ON customer_id = c.id
   WHERE c.id = 9
   GROUP BY c.id
  ;
`)


console.log(JSON.stringify(res.rows, null, 2))
