class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.text :image
      t.text :bio

      t.timestamps null: false
    end
  end
end
