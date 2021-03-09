class CreateStudySessions < ActiveRecord::Migration[6.1]
  def change
    create_table :study_sessions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :time_spent

      t.timestamps
    end
  end
end
