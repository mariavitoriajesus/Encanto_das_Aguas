-- Inserindo hóspedes
INSERT INTO hospedes (nome, cpf, telefone, email, endereco) VALUES
('Carlos Silva', '123.456.789-00', '(11) 98765-4321', 'carlos@email.com', 'Rua das Flores, 123, São Paulo'),
('Mariana Souza', '987.654.321-00', '(21) 99876-5432', 'mariana@email.com', 'Av. Central, 456, Rio de Janeiro'),
('Fernando Lima', '456.789.123-00', '(31) 91234-5678', 'fernando@email.com', 'Rua do Sol, 789, Belo Horizonte'),
('Ana Pereira', '741.852.963-00', '(41) 99652-8741', 'ana@email.com', 'Av. Primavera, 321, Curitiba'),
('Lucas Oliveira', '159.753.486-00', '(51) 98741-3652', 'lucas@email.com', 'Rua dos Pássaros, 159, Porto Alegre');

-- Inserindo quartos
INSERT INTO quarto (numero, tipo, capacidade, preco_diaria, status) VALUES
(101, 'Luxo', 2, 350.00, 'Disponivel'),
(102, 'Standard', 2, 200.00, 'Ocupado'),
(201, 'Luxo', 4, 500.00, 'Disponivel'),
(202, 'Suíte Master', 2, 700.00, 'Manutenção'),
(203, 'Econômico', 1, 150.00, 'Disponivel');

-- Inserindo reservas
INSERT INTO reserva (id_hospedes, id_quarto, data_checkin, data_checkout, status) VALUES
(1, 1, '2025-03-10', '2025-03-15', 'Confirmada'),
(2, 2, '2025-02-20', '2025-02-25', 'Confirmada'),
(3, 3, '2025-04-05', '2025-04-10', 'Pendente'),
(17, 4, '2025-05-15', '2025-05-20', 'Cancelada'),
(18, 15, '2025-06-01', '2025-06-07', 'Confirmada');

-- Inserindo pagamentos
INSERT INTO pagamento (id_reserva, valor, metodo_pagamento, status_pagamento) VALUES
(1, 1750.00, 'Crédito', 'Pago'),
(2, 1000.00, 'Pix', 'Pago'),
(3, 2500.00, 'Boleto', 'Pendente'),
(4, 3500.00, 'Débito', 'Cancelado'),
(5, 900.00, 'Dinheiro', 'Pago');

-- Inserindo serviços do SPA
INSERT INTO servico_spa (nome_servico, descricao, preco) VALUES
('Massagem Relaxante', 'Massagem de corpo inteiro para relaxamento', 150.00),
('Sauna', 'Sessão de sauna a vapor de 40 minutos', 80.00),
('Banho Terapêutico', 'Banho de imersão com óleos essenciais', 120.00),
('Esfoliação Corporal', 'Tratamento para remoção de células mortas e hidratação', 180.00),
('Reflexologia', 'Massagem nos pés para estimular pontos de pressão', 130.00);

-- Inserindo funcionários
INSERT INTO funcionario (nome, cpf, cargo, telefone, email, senha) VALUES
('Ana Mendes', '111.222.333-44', 'Recepcionista', '(11) 99999-1111', 'ana.mendes@email.com', 'senha123'),
('Ricardo Gomes', '222.333.444-55', 'Gerente', '(21) 98888-2222', 'ricardo@email.com', 'admin2025'),
('Laura Mendes', '333.444.555-66', 'Massagista', '(31) 97777-3333', 'laura@email.com', 'spa456'),
('Marcos Oliveira', '444.555.666-77', 'Camareiro', '(41) 96666-4444', 'marcos@email.com', 'limpeza789'),
('Fernanda Costa', '555.666.777-88', 'Atendente SPA', '(51) 95555-5555', 'fernanda@email.com', 'spa999');

-- Inserindo agendamentos do SPA
INSERT INTO agendamento_spa (id_hospedes, id_servico, data_hora, id_funcionario) VALUES
(1, 1, '2025-03-11 14:00:00', 3),
(2, 3, '2025-02-22 16:30:00', 5),
(3, 2, '2025-04-06 10:00:00', 5),
(4, 4, '2025-05-16 15:00:00', 3),
(5, 5, '2025-06-02 09:30:00', 3);

-- Inserindo histórico de hospedagem
INSERT INTO historico_hospedagem (id_hospedes, id_quarto, data_checkin, data_checkout, valor_total) VALUES
(1, 101, '2024-10-10', '2024-10-15', 1750.00),
(2, 202, '2024-08-05', '2024-08-10', 3500.00),
(3, 201, '2024-06-20', '2024-06-25', 2500.00),
(4, 102, '2024-07-01', '2024-07-05', 1000.00),
(5, 203, '2024-09-12', '2024-09-17', 900.00);
