class AddColumnsToMovie < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :released, :boolean
  end
end
