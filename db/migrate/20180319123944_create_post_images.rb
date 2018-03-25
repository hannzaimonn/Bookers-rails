class CreatePostImages < ActiveRecord::Migration[5.1]
  def change
    create_table :post_images do |t|
      t.text :user_name
      t.text :image_id
      t.text :caption
      t.integer :userid

      t.timestamps
    end
  end
end
