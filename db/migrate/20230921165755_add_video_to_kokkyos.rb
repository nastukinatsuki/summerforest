class AddVideoToKokkyos < ActiveRecord::Migration[6.1]
  def change
    add_column :kokkyos, :Video, :string
  end
end
