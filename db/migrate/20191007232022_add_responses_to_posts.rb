class AddResponsesToPosts < ActiveRecord::Migration[5.2]
  def change
      add_column :posts, :responses, :integer, array: true, default: []
  end
end
