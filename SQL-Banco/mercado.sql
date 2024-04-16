Create database mercado;

Use mercado;

Create table Produtos(
  idProdutos int not null auto_increment,
  nome varchar(45) not null,
  quantidade int not null,
  valor_unitario float not null,
  Primary key(idProdutos)
);


Create table Venda(
  idVenda int not null auto_increment,
  data_venda datetime not null,
  valor_total float not null,
  Primary Key(idVenda)
);

Create table itens_vendidos(
  iditens_vendidos int not null auto_increment,
  valor_venda float not null,
  quantidade int not null,
  fk_idVenda int not null,
  fk_idProdutos int not null,
  Primary key(iditens_vendidos),
  Foreign key(fk_idVenda) references Venda (idVenda),
  Foreign key(fk_idProdutos) references Produtos (idProdutos)
);