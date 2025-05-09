----------------parte 1------------------
-- Tabela de Clientes
CREATE TABLE clientes (
  id_cliente SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  telefone VARCHAR(20),
  endereco VARCHAR(200)
);

-- Tabela de Veículos
CREATE TABLE veiculos (
  id_veiculo SERIAL PRIMARY KEY,
  modelo VARCHAR(100) NOT NULL,
  tipo VARCHAR(50) NOT NULL,
  preco_diario DECIMAL(10, 2) NOT NULL
);

-- Tabela de Locações
CREATE TABLE locacoes (
  id_locacao SERIAL PRIMARY KEY,
  id_cliente INT REFERENCES clientes(id_cliente) ON DELETE CASCADE,
  id_veiculo INT REFERENCES veiculos(id_veiculo) ON DELETE CASCADE,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  valor_total DECIMAL(10, 2) NOT NULL
);

-- Tabela de Preços (caso queira uma tabela separada para preços)
CREATE TABLE precos (
  id_preco SERIAL PRIMARY KEY,
  id_veiculo INT REFERENCES veiculos(id_veiculo),
  preco_diario DECIMAL(10, 2) NOT NULL
);
