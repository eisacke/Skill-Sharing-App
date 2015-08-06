class ChangeCostFormatInLessons < ActiveRecord::Migration
  def change
    change_column :lessons, :cost, :float
  end
end
