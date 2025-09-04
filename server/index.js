import pg from "pg"

const {Client} = pg


const client = new Client({
  connectionString: "postgres://root:root@localhost:5432/live024"
})


await client.connect();

const res = await client.query(`
  SELECT * FROM customers_summary
  ORDER BY total_revenue DESC
`)


console.log(res.rows)
