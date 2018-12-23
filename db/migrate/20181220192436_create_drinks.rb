class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :drink_name
      t.float :price
      t.integer :user_id

      t.timestamps
    end
  end
end
