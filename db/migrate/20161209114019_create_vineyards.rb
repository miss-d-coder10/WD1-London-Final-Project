class CreateVineyards < ActiveRecord::Migration[5.0]
  def change
    create_table :vineyards do |t|
      t.string :vineyard_name
      t.string :email
      t.string :website_url
      t.string :phone
      t.string :address
      t.string :city
      t.string :region
      t.string :postcode
      t.string :country
      t.string :specialty
      t.string :description
      t.boolean :pet_friendly
      t.boolean :holiday
      t.boolean :tours
      t.boolean :events
      t.boolean :family_friendly
      t.text :cover_image
      t.text :image_one
      t.text :image_two
      t.text :image_three
      t.text :image_four
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
