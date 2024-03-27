# Documentação da Criação de um novo projeto em Ruby on Rails
> Será descrito abaixo, todo o passo a passo (ou quase todo 🥲) para a criação desse projeto!

```sh
  rails new CinetecaHub
  cd CinetecaHub

  rails server
```

```sh
  rails generate model genre name:string
  rails db:migrate

  rails generate model director name nationality birth_date:date genre:references
  rails db:migrate

  rails gererate model movie title year_of_release:date synopsis made_in duration:integer genre:references director:references
  rails db:migrate
```

```sh
  rails routes -g genres
  rails routes -g directors
  rails routes -g movies
```

```sh
  rails generate migration change_year_of_release_column_to_integer
  rails db:migrate
```

```sh
  rails generate migration add_columns_to_movie released:boolean
  rails db:migrate
```

```sh
  rails generate migration add_column_draft_to_movie draft:integer
  rails db:migrate
```


```sh
  rails active_storage:install
  rails db:migrate
```