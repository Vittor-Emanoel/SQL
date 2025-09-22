import { startTx } from "./db/startTx.js"

startTx(async (tx, createSavePoint) => {
  await tx.query('INSERT INTO customers (first_name, last_name, email) VALUES($1, $2, $3)', ['Vittor', 'Silva', 'test@test.com'])

  await tx.query('SAVEPOINT sp_01')

  await createSavePoint('sp_01', async () => {
    await tx.query('UPDATE bank_accounts SET balance = balance - 2000 WHERE user_id = 1')
    await tx.query('UPDATE bank_accounts SET balance = balance - 2000 WHERE user_id = 2')
  })

})
