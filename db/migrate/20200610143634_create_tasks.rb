class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :body
      t.belongs_to :project, null: false, foreign_key: true
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
