-------------parte 2------------------
-- Inserir dados na tabela clientes
INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('João Silva', 'joao@email.com', '111111111', 'Rua A, 123'),
('Maria Oliveira', 'maria@email.com', '111111112', 'Rua B, 456'),
('Carlos Souza', 'carlos@email.com', '111111113', 'Rua C, 789'),
('Fernanda Costa', 'fernanda@email.com', '111111114', 'Rua D, 101'),
('Paulo Almeida', 'paulo@email.com', '111111115', 'Rua E, 202'),
('Ana Lima', 'ana@email.com', '111111116', 'Rua F, 303'),
('Lucas Pereira', 'lucas@email.com', '111111117', 'Rua G, 404'),
('Juliana Santos', 'juliana@email.com', '111111118', 'Rua H, 505'),
('Renato Carvalho', 'renato@email.com', '111111119', 'Rua I, 606'),
('Tatiane Rocha', 'tatiane@email.com', '111111110', 'Rua J, 707');

-- Inserir dados na tabela veiculos
INSERT INTO veiculos (modelo, tipo, preco_diario) VALUES
('Corolla', 'Carro', 100.00),
('Civic', 'Carro', 120.00),
('NMAX 160', 'Moto', 50.00),
('Fusca', 'Carro', 80.00),
('XRE 300', 'Moto', 70.00),
('HB20', 'Carro', 90.00),
('Bros 160', 'Moto', 60.00),
('Onix', 'Carro', 110.00),
('Lander 250', 'Moto', 65.00),
('Kwid', 'Carro', 85.00);

-- Inserir dados na tabela locacoes
INSERT INTO locacoes (id_cliente, id_veiculo, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2025-05-01', '2025-05-05', 400.00),
(2, 2, '2025-05-02', '2025-05-06', 480.00),
(3, 3, '2025-05-03', '2025-05-07', 200.00),
(4, 4, '2025-05-04', '2025-05-08', 320.00),
(5, 6, '2025-05-05', '2025-05-09', 360.00);

-- Inserir dados na tabela precos
INSERT INTO precos (id_veiculo, preco_diario) VALUES
(1, 100.00),
(2, 120.00),
(3, 50.00),
(4, 80.00),
(5, 70.00),
(6, 90.00),
(7, 60.00),
(8, 110.00),
(9, 65.00),
(10, 85.00);
