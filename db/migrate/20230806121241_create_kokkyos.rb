class CreateKokkyos < ActiveRecord::Migration[6.1]
  def change
    create_table :kokkyos do |t|
      t.string :title
      t.string :country
      t.text :issue
      t.text :project
      t.text :point

      t.timestamps
    end
  end

  def change
    add_column :kokkyos, :image, :string
  end
end
