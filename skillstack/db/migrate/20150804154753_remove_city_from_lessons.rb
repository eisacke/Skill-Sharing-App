class RemoveCityFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :city
  end
end
