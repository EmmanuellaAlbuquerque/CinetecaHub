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