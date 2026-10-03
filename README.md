# Análise de Vendas — SQL + Power BI

Projeto de análise exploratória de uma base fictícia de vendas, da extração via SQL até um dashboard interativo em Power BI.

## Problema de negócio

Entender onde a receita de vendas está concentrada, por produto, categoria, região e forma de pagamento, para apoiar decisões de estoque, precificação e foco comercial.

## Perguntas norteadoras

- Onde estão concentradas as vendas (volume) e onde está concentrada a receita (faturamento) — e por que elas divergem?
- Quais produtos/categorias sustentam o faturamento vs. quais geram apenas volume?
- Qual forma de pagamento os clientes preferem e qual gera mais receita?
- Existe sazonalidade nas vendas ao longo do ano?

## Fonte de dados e metodologia

Base fictícia de 200 pedidos / 632 itens vendidos, criada via script SQL (`criacao_e_insercoes.sql`), com colunas de data, cliente, localização, categoria, produto, quantidade, preço unitário, forma de pagamento, vendedor e status.

## Estrutura do repositório

```
├── sql/
│   ├── criacao_e_insercoes.sql   # Criação da tabela e carga dos dados
│   └── consultas.sql              # Consultas exploratórias (quantidade, faturamento, status)
├── dashboard/
│   └── projeto_vendas.pbix        # Dashboard Power BI
└── README.md
```

## Tecnologias utilizadas

- **SQL (SQLite)** — modelagem e consultas exploratórias
- **Power BI / DAX** — medidas, visualizações e dashboard interativo
- **DAX**: `Faturamento`, `Quantidade`, `Ticket Médio` e `Total Pedidos` como medidas (não colunas calculadas), com `DIVIDE()` para evitar erros de divisão por zero

## Modelo de dados

Tabela única `vendas`: `id_venda`, `data_venda`, `cliente`, `cidade`, `estado`, `regiao`, `categoria`, `produto`, `quantidade`, `preco_unitario`, `desconto_pct`, `forma_pagamento`, `vendedor`, `status`.

## KPIs do dashboard

| KPI | Valor |
|---|---|
| Faturamento Total | R$ 331.656,45 |
| Quantidade Total (itens) | 632 |
| Total de Pedidos | 200 |
| Ticket Médio | R$ 524,77 |

## Principais insights

**Categoria**
Móveis lidera o faturamento (R$ 113 mil), seguida por Esporte (R$ 94 mil), juntas somam 62% da receita total. A liderança de Móveis vem da combinação de ticket médio alto (R$ 772,61) com volume relevante (146 itens); Esporte compensa um ticket médio menor (R$ 583,13) com volume maior (162 itens). Papelaria é o oposto: maior volume relativo, mas apenas R$ 6,5 mil em receita — produto de giro, não de receita.

**Produto**
A Bicicleta Aro 29 sozinha responde por R$ 76,4 mil, quase 23% do faturamento total, vindo de um único produto entre 22 no catálogo. É o item mais relevante do negócio e um ponto de atenção para gestão de estoque.

**Região e Estado**
Sudeste lidera o faturamento (R$ 94,5 mil), seguida de perto por Sul (R$ 88,1 mil). O Sul, apesar de volume e faturamento menores, tem ticket médio mais alto (R$ 616,43 vs. R$ 565,82 do Sudeste), evidência de que o ticket médio pesa tanto quanto o volume na composição da receita regional. No recorte por estado, Minas Gerais lidera (R$ 41,5 mil) puxado por um ticket médio elevado (R$ 702,75), enquanto São Paulo tem o maior volume de vendas (70 itens) mas ticket médio mais moderado.

**Vendedor**
Fernando tem o maior faturamento (R$ 82,5 mil) e maior volume (141 itens) entre os vendedores. Suas vendas de Notebook (R$ 28,8 mil) são o maior faturamento de um único produto por vendedor na base, reforçando sua liderança.

**Forma de pagamento**
Cartão de Débito lidera em faturamento (R$ 83,9 mil), seguido de Boleto (R$ 80,8 mil), mesmo o Boleto tendo mais transações (186 vs. 141), o que indica ticket médio mais alto nas compras via Débito.

**Sazonalidade**
A série temporal de vendas não mostra uma tendência de crescimento ou padrão sazonal claro, os picos observados (ex: maio) são pontuais, sugerindo pedidos isolados de alto volume em vez de um efeito sazonal recorrente.


