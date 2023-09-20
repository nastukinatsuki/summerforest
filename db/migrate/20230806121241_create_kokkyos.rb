class CreateKokkyos < ActiveRecord::Migration[6.1]
  def change
    create_table :kokkyos do |t|
      t.string :title
      t.string :country
      t.text :issue
      t.text :project
      t.text :point
      t.string :image
      t.timestamps
    end
  end

 
end
