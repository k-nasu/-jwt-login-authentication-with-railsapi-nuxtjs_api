class CreateProjectMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_members do |t|
      t.integer :project_id, null: false
      t.integer :user_id, null: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
