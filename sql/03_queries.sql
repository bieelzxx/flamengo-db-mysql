# 1. Artilheiro do time

select nome as Jogador, sum(gols) as Gols from participacoes p 
join jogadores j on p.id_jogador = j.id
group by nome
order by sum(gols) desc;

# 2. Aproveitamento por competição

select 
    nome as Competição,
    sum(case
        when gols_flamengo > gols_adversario then 1
        else 0
    end) as Vitória,
    sum(case
        when gols_flamengo < gols_adversario then 1
        else 0
    end) as Derrota,
    sum(case
        when gols_flamengo = gols_adversario then 1
        else 0
    end) as Empate
from
    partidas p
        join
    competicoes c on p.id_competicao = c.id
group by nome;

# 3. Jogadores com mais cartões

select nome as Jogador, sum(case when cartao = 'amarelo' then 1 else 0 end) as `Cartão Amarelo`, sum(case when cartao = 'vermelho' then 1 else 0 end) as `Cartão Vermelho` from participacoes p 
join jogadores j on p.id_jogador = j.id
where cartao is not null 
group by id_jogador
having count(cartao) >= 1
order by nome;

# 4. Mandante vs visitante

select case when mandante = 1 then 'Casa' else 'Fora' end as `Mando de Campo`, sum(gols_flamengo) as Gols from partidas
group by mandante
order by gols;

# 5. Média de gols por competição

select nome as Competição, avg(gols_flamengo) as `Média de Gols` from partidas p
join competicoes c on p.id_competicao = c.id
group by id_competicao;

# 6. Distribuição do elenco por posição

select posicao as Posição, count(*) as Quantidade from jogadores
group by posicao;

# 7. Adversário contra quem mais fez gol

select nome as Adversário, sum(gols_flamengo) as Gols from partidas p join adversarios a on p.id_adversario = a.id
group by nome
order by Gols desc;


