-- 1. Criando a tabela para o exemplo
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    estoque_atual INT
);

-- 2. Inserindo um produto de teste
INSERT INTO produtos (id, nome, estoque_atual) VALUES (1, 'Teclado Mecânico', 50);

-- 3. CRIANDO A STORED PROCEDURE
-- Esta procedure atualiza o estoque e evita que ele fique negativo
DELIMITER //

CREATE PROCEDURE sp_BaixaEstoque(
    IN p_produto_id INT, 
    IN p_quantidade INT
)
BEGIN
    -- Verifica se há estoque suficiente antes de vender
    IF (SELECT estoque_atual FROM produtos WHERE id = p_produto_id) >= p_quantidade THEN
        UPDATE produtos 
        SET estoque_atual = estoque_atual - p_quantidade
        WHERE id = p_produto_id;
        
        SELECT 'Venda realizada com sucesso!' AS Status;
    ELSE
        SELECT 'Erro: Estoque insuficiente!' AS Status;
    END IF;
END //

DELIMITER ;

-- 4. Como executar a procedure:
-- CALL sp_BaixaEstoque(1, 5);
