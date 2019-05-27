class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :caption
      t.integer :user_id
      t.integer :course_id
      t.timestamps
    end

    add_index :images, [:user_id, :course_id]
    add_index :images, :course_id
  end
end
