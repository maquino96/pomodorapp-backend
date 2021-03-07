class CreateStudySessions < ActiveRecord::Migration[6.1]
  def change
    create_table :study_sessions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :total_time, :default=>nil

      t.timestamps
    end
  end
end
