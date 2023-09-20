class CreateLas < ActiveRecord::Migration[6.1]
  def change
    create_table :las do |t|
      t.string :title
      t.string :country
      t.text :issue
      t.text :project
      t.text :point

      t.timestamps
    end
  end
end
