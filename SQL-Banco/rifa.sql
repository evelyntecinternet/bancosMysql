Create database rifa;

Use rifa;

Create table Usuario(
  idUsuario int not null auto_increment,
  nome varchar(45) not null,
  Primary key(idUsuario)
);


Create table Rifa(
  idRifa int not null auto_increment,
  data datetime not null,
  dia date not null,
  hora time not null,
  premio float not null,
  numeros int not null,
  valor_numero float not null,
  descricao varchar(100),
  fk_idCriador int not null,
  Primary key(idRifa),
  Foreign key(fk_idCriador) references Usuario (idUsuario)
);

Create table Numeros_Vendidos(
  idNumeros_Vendidos int not null auto_increment,
  numero_escolhido int not null,
  fk_idRifa int not null,
  fk_idUsuario int not null,
  Primary key(idNumeros_Vendidos),
  Foreign Key (fk_idRifa) references Rifa (idRifa),
  Foreign Key (fk_idUsuario) references Usuario (idUsuario)
);