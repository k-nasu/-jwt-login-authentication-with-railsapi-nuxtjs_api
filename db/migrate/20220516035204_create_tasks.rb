class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      t.integer :project_id, null: false
      t.string :in_charge, null: false
      t.integer :status, null: false
      t.string :created_by, null: false
      t.datetime :started_at, null: false
      t.datetime :completed_at, null: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
