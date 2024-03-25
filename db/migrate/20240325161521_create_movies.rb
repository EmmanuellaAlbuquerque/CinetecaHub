class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :year_of_release
      t.string :synopsis
      t.string :made_in
      t.integer :duration
      t.references :genre, null: false, foreign_key: true
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
