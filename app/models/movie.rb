class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :director

  enum released: { "Já foi lançado": true, "Não foi lançado": false }
end
