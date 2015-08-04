class CreateLessons < ActiveRecord::Migration
  mount_uploader :image_one, AvatarUploader
  mount_uploader :image_two, AvatarUploader
  mount_uploader :image_three, AvatarUploader

  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.text :image_one
      t.text :image_two
      t.text :image_three
      t.string :location
      t.float :cost
      t.integer :teacher_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
