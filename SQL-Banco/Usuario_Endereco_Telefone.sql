Create database Usuario_Endereco_Telefone;

Use Usuario_Endereco_Telefone;

Create table Endereco(
  idEndereco int not null auto_increment,
  logradouro Varchar(45) not null,
  bairro Varchar(45) not null,
  estado Varchar(45) not null,
  complemento Varchar(45) not null,
  cep Int not null, 
  Primary Key(idEndereco)
);

Create table Pessoa(
  idPessoa int not null auto_increment,
  nome Varchar(45) not null,
  numero_casa Varchar(20) not null,
  data_nascimento Date not null,
  sexo Varchar(2),
  cpf Int not null,
  fk_idEndereco Int not null,
  Primary key(idPessoa),
  Foreign key(fk_idEndereco) References Endereco (idEndereco) 
);

Create table Telefone(
 idTelefone int not null auto_increment,
 numero Decimal(9) not null,
 operadora Varchar(45) not null,
 ddd Int not null,
 fk_idPessoa Int not null,
 Primary key(idTelefone),
 Foreign key(fk_idPessoa) References Pessoa (idPessoa) 
);