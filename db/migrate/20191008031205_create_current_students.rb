class CreateCurrentStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :current_students do |t|
      t.integer :i_id
      t.integer :s_id
    end
  end
end
