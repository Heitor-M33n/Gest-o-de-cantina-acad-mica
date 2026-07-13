CREATE TABLE Produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estoque INT NOT NULL,
    preco NUMERIC(10,2) NOT NULL
);

CREATE TABLE Vendas (
    id SERIAL PRIMARY KEY,
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE ItensVenda (
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco NUMERIC(10,2) NOT NULL,

    PRIMARY KEY (id_venda, id_produto),

    CONSTRAINT fk_venda
    FOREIGN KEY (id_venda)
    REFERENCES vendas(id)
    ON DELETE CASCADE,

    CONSTRAINT fk_produto
    FOREIGN KEY (id_produto)
    REFERENCES produtos(id)
);
