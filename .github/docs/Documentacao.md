# Documentação da Criação de um novo projeto em Ruby on Rails
> Será descrito abaixo, todo o passo a passo (ou quase todo 🥲) para a criação desse projeto!

## Definindo o Backlog Inicial do projeto
![projeto](../assets/InitialCinetecaHubKanbanScreenshot.png)

## Gerando a estrutura base

```sh
  # gera a estrutura base de um projeto rails
  rails new CinetecaHub

  cd CinetecaHub

  # roda o servidor
  rails server
```

## Gerando os modelos do Banco de Dados

```sh
  # gera o modelo Gênero e cria a tabela no banco
  rails generate model genre name:string
  
  # executa as migrações pendentes
  rails db:migrate

  # gera o modelo Diretor e cria a tabela no banco
  rails generate model director name nationality birth_date:date genre:references

  # executa as migrações pendentes
  rails db:migrate

  # gera o modelo Filme e cria a tabela no banco
  rails gererate model movie title year_of_release:date synopsis made_in duration:integer genre:references director:references

  # executa as migrações pendentes
  rails db:migrate
```

## Visualizando as rotas (definidas em config/routes.rb)
```sh
  # Exibe as rotas referentes
  rails routes -g genres
  rails routes -g directors
  rails routes -g movies
```

## Gerando alterações específicas no Modelo Filme

```sh
  # Muda campo da tabela de Filmes
  rails generate migration change_year_of_release_column_to_integer
  rails db:migrate
```

```sh
  # Muda campo da tabela de Filmes
  rails generate migration add_columns_to_movie released:boolean
  rails db:migrate
```

```sh
  # Muda campo da tabela de Filmes
  rails generate migration add_column_draft_to_movie draft:integer
  rails db:migrate
```

## Configurando Active Storage para Upload de Imagens no Rails

```sh
  # Configurando Active Storage para upload de imagens
  rails active_storage:install
  rails db:migrate
```

## Configurando Hotwire Livereload (https://github.com/kirillplatonov/hotwire-livereload) com Redis

```sh
  # --- Após instalar o Redis

  # inicia o redis
  redis-server

  # verifica se o Redis está funcionando corretamente
  redis-cli ping

  # inicia o servidor rails
  rails server
```
