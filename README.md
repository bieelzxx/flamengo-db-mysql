# Flamengo DB — MySQL

Banco de dados relacional sobre partidas, jogadores e desempenho do Flamengo, construído em MySQL como projeto prático de estudo.

## 🎯 Objetivo

Praticar modelagem relacional (PK, FK, relacionamentos 1:N e N:N), criação de tabelas, inserção de dados e consultas analíticas (JOIN, agregação, GROUP BY, HAVING) sobre um domínio real.

## 🗂️ Estrutura do repositório

```
flamengo-db-mysql/
├── sql/
│   ├── 01_schema.sql       # CREATE TABLE (estrutura do banco)
│   ├── 02_seed.sql         # INSERT (dados de exemplo)
│   └── 03_queries.sql      # Consultas analíticas
├── docs/
│   └── der.png             # Diagrama Entidade-Relacionamento (opcional)
└── README.md
```

## 🧩 Modelo de dados

- **jogadores** — elenco do time
- **competicoes** — competições disputadas (Brasileirão, Libertadores, etc.)
- **adversarios** — times adversários
- **partidas** — jogos, com FK para competição e adversário
- **participacoes** — tabela associativa (N:N) entre jogadores e partidas, registrando gols e cartões

> Diagrama detalhado em `docs/der.png` (ou descreva aqui em texto se não tiver gerado a imagem ainda).

## ▶️ Como rodar

1. Criar o banco:
   ```sql
   CREATE DATABASE flamengo_db;
   USE flamengo_db;
   ```
2. Importar a estrutura:
   ```bash
   mysql -u seu_usuario -p flamengo_db < sql/01_schema.sql
   ```
3. Popular com os dados de exemplo:
   ```bash
   mysql -u seu_usuario -p flamengo_db < sql/02_seed.sql
   ```
4. Rodar as consultas de análise:
   ```bash
   mysql -u seu_usuario -p flamengo_db < sql/03_queries.sql
   ```

## 📊 Exemplos de consulta

*(preencher depois de escrever as queries — cole aqui 2-3 exemplos com o resultado, tipo "artilheiro do time" ou "aproveitamento por competição")*

## 🧠 Decisões tomadas

*(explique brevemente escolhas de modelagem — por que criou a tabela associativa, por que certos campos são NOT NULL, etc. Isso mostra raciocínio, não só código)*

## 📌 Status

- [x] Schema criado
- [x] Dados inseridos
- [ ] Queries de análise escritas
- [ ] README finalizado com exemplos
