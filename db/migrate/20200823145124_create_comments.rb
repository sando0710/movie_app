class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :user, foreign_key: { to_table: :users }
      t.references :movie, foreign_key: { to_table: :movies }
      t.timestamps
    end
  end
end
