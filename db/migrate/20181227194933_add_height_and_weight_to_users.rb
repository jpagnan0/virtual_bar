class AddHeightAndWeightToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :height, :string
    add_column :users, :weight, :integer
  end
end
