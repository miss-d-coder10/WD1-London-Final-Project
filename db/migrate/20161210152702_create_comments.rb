class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.float :rating
      t.text :body
      t.references :user, foreign_key: true
      t.references :vineyard, foreign_key: true

      t.timestamps
    end
  end
end