-- Buscar veículos do tipo 'Carro' com preço acima de 100 OU motos com preço abaixo de 70
SELECT * FROM veiculos
WHERE (tipo = 'Carro' AND preco_diario > 100)
   OR (tipo = 'Moto' AND preco_diario < 70);

-- Buscar todos os veículos que não são do tipo 'Moto'
SELECT * FROM veiculos
WHERE NOT tipo = 'Moto';

-- Buscar clientes que não moram na 'Rua A, 123'
SELECT * FROM clientes
WHERE endereco <> 'Rua A, 123';

-- Buscar clientes cujo nome começa com a letra 'J'
SELECT * FROM clientes
WHERE nome LIKE 'J%';

-- Buscar clientes com IDs 1, 2 ou 3
SELECT * FROM clientes
WHERE id_cliente IN (1, 2, 3);

-- Mostrar clientes que fizeram mais de 1 locação
SELECT id_cliente, COUNT(*) AS total
FROM locacoes
GROUP BY id_cliente
HAVING COUNT(*) > 1;

-- Listar todos os veículos ordenados pelo preço diário em ordem decrescente
SELECT * FROM veiculos
ORDER BY preco_diario DESC;

-- Calcular o preço médio das locações
SELECT AVG(valor_total) AS media_locacoes
FROM locacoes;

-- Buscar o valor máximo de uma locação
SELECT MAX(valor_total) AS locacao_mais_cara
FROM locacoes;

-- Buscar o menor valor de locação
SELECT MIN(valor_total) AS locacao_mais_barata
FROM locacoes;
