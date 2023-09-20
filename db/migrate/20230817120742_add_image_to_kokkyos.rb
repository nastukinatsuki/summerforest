class AddImageToKokkyos < ActiveRecord::Migration[6.1]
  def change
    add_column :kokkyos, :image, :string
  end
end
