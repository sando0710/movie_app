class AddColumnMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :sub_category, :string
  end
end
