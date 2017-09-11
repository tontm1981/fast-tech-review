# Fast Tech Review

### Disclamier

Você deverá fazer todas as etapas no menor tempo possível, nossa expectativa entre seu aceite e a última fase é de 3 dias.

### Roadmap

1. Vamos bater um papo rápido, pode ser presencial ou por skype
2. Crie um fork desse repositório, e clone-o
3. Responda os itens #1, #2 e #3 do Tech Review abaixo
4. Gere um ZIP do seu repositório e envie para xyz@dafiti.com.br. No assunto coloque "Fast Tech Review - `<github username>`". Pedimos nesse formato para manter esse repositório sem histórico de respostas.
5. In office coding time - Após enviar seu teste, dá um ping no skype/e-mail para agendarmos sua visita, você passará umas 2hs~2h:30 aqui conosco. A idéia é vermos uma implementação de algum algoritmo simples, sem white board.

### Tech Review

1. Desenhe duas alternativas de armazenamento de dados para um sistema de Catalogo de Cervejas, descreva suas VANTAGENS e DESVANTAGENS. Pense em um cenário de alta concorrência, tipo um e-commerce :) (escrita moderada, leitura pesada). Poderão ser estruturas diferentes de dados ou até bancos de dados diferentes (Apenas precisam ser soluções open source).

**Exemplo de resposta de uma consulta que seu modelo deverá retornar** https://api.punkapi.com/v2/beers/25

**Como apresentar sua solução** Mostre seu desenho do banco: pode ser um arquivo SQL, um schema JSON ou um arquivo texto explicando sua abordagem

2. Queremos entender como você aborda as falhas que uma API possa gerar. Para isso: 
- Faça um Proxy API para esta interface [https://api.punkapi.com/v2/beers](https://api.punkapi.com/v2/beers) - [Documentação](https://punkapi.com/documentation/v2)
    * Aplique os filtros: abv_gt, abv_lt, ibu_gt, ibu_lt, ebc_gt, ebc_lt, beer_name
    * Faça entre 1 e 3 requisições por segundo, para alcançar algumas limitações documentadas
    * Não deverá ser possível listar todos os itens em uma única request

**Como apresentar sua solução:** Escreva o código na linguagem que prefir, pode usar framework, pode ser pseudo-code

3. Escreva um pouco sobre os tópicos [deste](questions.md) link e envie junto com suas respostas. Pode ser um por assunto, um por linha ou uma redação.

