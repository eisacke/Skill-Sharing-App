class AddCityToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :city, :string
  end
end
