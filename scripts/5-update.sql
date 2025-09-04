\c pg1


UPDATE customers
  SET first_name = 'Vittor'
  WHERE id = 1
  RETURNING *
  ;