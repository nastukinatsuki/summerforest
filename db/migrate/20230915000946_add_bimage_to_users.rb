class AddBimageToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bimage, :string
  end
end
