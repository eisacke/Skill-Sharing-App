class DeleteColumnImageFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :image
  end
end
