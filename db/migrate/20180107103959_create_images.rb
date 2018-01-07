class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :background_image
      t.string :shop_image1
      t.string :shop_image2
      t.string :shop_image3
      t.string :shop_image4
      t.string :shop_image5

      t.timestamps
    end
  end
end
