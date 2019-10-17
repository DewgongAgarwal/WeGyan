class RemoveColumnsFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :s_id, :string
    remove_column :posts, :responses, :string
  end
end
