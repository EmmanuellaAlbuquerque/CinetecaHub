class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :director

  enum released: { "Já foi lançado": true, "Não foi lançado": false }

  enum status: { draft: 1, published: 0 }
end
