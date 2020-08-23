class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :image, null: false
      t.references :user, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
