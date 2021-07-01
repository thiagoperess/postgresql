CREATE TABLE IF NOT EXISTS teste (
	ID serial PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

SELECT COLUMN_NAME,
	data_type
FROM information_schema.COLUMNS
WHERE TABLE_NAME = 'banco';

SELECT * FROM cliente_transacoes;

SELECT AVG(valor)
FROM cliente_transacoes;

SELECT COUNT(numero),
	email
FROM cliente
WHERE email ILIKE '%gmail.com'
GROUP BY email;

SELECT MIN(numero)
FROM cliente;

SELECT MAX(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

SELECT COLUMN_NAME,
	data_type
FROM information_schema.COLUMNS
WHERE TABLE_NAME = 'cliente_transacoes';

SELECT COUNT(id), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
HAVING COUNT(id) > 150;

SELECT SUM(valor)
FROM cliente_transacoes;

SELECT SUM(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id;

