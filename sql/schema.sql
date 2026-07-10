CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    estoque INT NOT NULL,
    preco NUMERIC(10,2) NOT NULL
);

CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    data TIMESTAMP NOT NULL
);

CREATE TABLE itensvenda (
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco NUMERIC(10,2) NOT NULL,

    PRIMARY KEY (id_venda, id_produto),

    CONSTRAINT fk_venda
        FOREIGN KEY (id_venda)
        REFERENCES vendas(id),

    CONSTRAINT fk_produto
        FOREIGN KEY (id_produto)
        REFERENCES produtos(id)
);