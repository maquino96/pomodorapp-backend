class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.boolean :completed, :default=>false

      t.timestamps
    end
  end
end
