# TABD

Tópicos A vançados em Bases de Dados

# Queries

## Tabela `Athlete`

- [X] Idade média dos atletas
- [X] Atleta mais novo e mais velho
- [X] Nº de atletas por idade
- [X] Nº de atletas por país
- [ ] Nº de atletas por pais e genero
- [X] Nº de atletas por genero
  - [X] bar plot
  - [X] pie chart

## Tabela `Event`

## Tabela `Result`

- [X] Average swim time
- [X] Averge nº of points

## Tabela `Club`

- [X] Nº de clubes por pais
- [X] Nº de clubes por regiao

## Tabela `Meet`
- [ ] ?? nao tem nada de jeito para fazer queries

## Tabela `Swimstyle`

- [X] swimstyle com maior e menor distancia

## To Do 

- [ ] Corrigir o pie chart de athletes by gender
- [ ] Adicionar o valor de cada barra/setor aos gráficos

## Dúvidas

- [ ] Fazer `AVG()` do resultado de uma query. Estava a tentar fazer isto para saber em media qt clubes e que uma region tem
mas nao dá para fazer AVG(COUNT(*))

```SQL
SELECT region, COUNT(*) AS regionCount
FROM annp_final.club
WHERE region SIMILAR TO '[A-Z]+'
GROUP BY region
ORDER BY regionCount ASC;
```

isto dá uma coluna com region:n de clubes, eu agora queria fazer a media disso, tipo

```SQL
SELECT AVG(COUNT(*))
FROM annp_final.club
WHERE region SIMILAR TO '[A-Z]+'
GROUP BY region;
```

mas nao dá