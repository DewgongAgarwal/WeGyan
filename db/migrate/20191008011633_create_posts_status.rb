class CreatePostsStatus < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_statuses do |t|
      t.integer :post_id
      t.integer :s_id
      t.integer :status
    end
  end
end
