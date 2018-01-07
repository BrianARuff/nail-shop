class AddRandomToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :random, :string
  end
end
