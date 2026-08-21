create database flamengo_db;
use flamengo_db;

create table jogadores(
	id int primary key auto_increment,
    nome varchar(40) not null,
    data_nasc date not null,
    nacionalidade varchar(20) not null,
    numero_camisa int not null,
    posicao enum('goleiro', 'defensor', 'meio_campista', 'atacante') not null,
    altura float not null,
    peso float not null
);

create table competicoes(
	id int primary key auto_increment,
    nome varchar(15) not null,
    temporada year not null
);

create table adversarios(
	id int primary key auto_increment,
    nome varchar(40) not null
);

create table partidas(
	id int primary key auto_increment,
    data_partida date not null,
    mandante bool not null,
    gols_flamengo int not null,
    gols_adversario int not null,
    id_adversario int not null,
    id_competicao int not null,
    foreign key (id_adversario) references adversarios(id),
    foreign key (id_competicao) references competicoes(id)
);


create table participacoes(
	id int primary key auto_increment,
	id_partida int not null,
    id_jogador int not null,
    gols int not null,
    assist int not null,
    cartao enum('amarelo', 'vermelho'),
    foreign key (id_partida) references partidas(id),
    foreign key (id_jogador) references jogadores(id)
);