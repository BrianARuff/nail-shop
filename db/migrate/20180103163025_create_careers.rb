class CreateCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :careers do |t|
      t.string :position
      t.string :location
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
