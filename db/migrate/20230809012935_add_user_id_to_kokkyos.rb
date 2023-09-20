class AddUserIdToKokkyos < ActiveRecord::Migration[6.1]
  def change
    add_column :kokkyos, :user_id, :integer
  end
end
