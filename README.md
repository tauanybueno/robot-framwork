# Robot Framwork  🤖
Curso de Robot Framework - QAxpress

## 🧪 Detalhes do projeto

A aplicação a ser testada se chama Mark89 e se trata de um site onde você pode fazer o seu cadastro ou login, e acessar uma página onde você pode fazer a adição e/ou exclusão de tarefas além de marcá-las como completas.

## 🛠️ Abrir e rodar o Mark89

Aqui vem um passo a passo para abrir e rodar o projeto.

- Procure o local onde o projeto está e o selecione (arquivo não disponibilizado por se tratar de um curso pago)
- Dentro da pasta `apps` selecione o caminho para a pasta `api` e rode o comando `npm run dev`
- Dentro da pasta `apps` selecione o caminho para a pasta `web` e rode o comando `npm run dev`

## 🛠️ Abrir e rodar os testes automatizados

- `robot -d ./logs nomedoarquivo.robot` - roda um teste específico
- `robot -d ./logs tests/` - roda todos os testes dentro da pasta `tests`
- `robot -d ./logs tests/nomedoarquivo.robot` - roda um teste específico dentro da pasta`tests`
- `robot -d ./logs/ -i nomedatag tests/` - busca pela tag específica e roda apenas aquele caso de teste
