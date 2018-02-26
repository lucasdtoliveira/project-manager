class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.text :content
      t.text :estado
      t.references :project, foreign_key: true

      t.timestamps
    end
    add_index :bugs, [:project_id, :created_at]
  end
end
