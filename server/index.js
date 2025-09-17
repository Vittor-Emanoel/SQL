import pg from "pg"

const {Client} = pg


const client = new Client({
  connectionString: "postgres://root:root@localhost:5432/live024"
})


await client.connect();

try {
  await client.query('BEGIN')

  await client.query('INSERT INTO customers (first_name, last_name) VALUES($1, $2)', ['Mateus', 'Silva'])

  await client.query('SAVEPOINT sp_01')

  try{
    await client.query('UPDATE bank_accounts SET balance = balance - 2000 WHERE user_id = 1')
    await client.query('UPDATE bank_accounts SET balance = balance - 2000 WHERE user_id = 2')
  } catch {
     await client.query('ROLLBACK TO SAVEPOINT sp_01')
  }

  await client.query('COMMIT')
} catch (error) {
  await client.query('ROLLBACK')
  console.log(error)
}

// console.log(JSON.stringify(res.rows, null, 2))
await client.end()
