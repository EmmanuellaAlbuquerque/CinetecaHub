class ChangeYearOfReleaseColumnToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :year_of_release, :integer
  end
end
