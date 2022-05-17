class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      t.integer :budget, null: false
      t.string :owner, null: false
      t.integer :status, null: false
      t.datetime :started_at, null: false
      t.datetime :completed_at, null: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
