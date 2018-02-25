class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :content
      t.string :titulo
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :projects, [:user_id, :created_at]
  end
end
