class CreateStudySessions < ActiveRecord::Migration[6.1]
  def change
    create_table :study_sessions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :finished_time, null: false, :default=> 0

      t.timestamps
    end
  end
end
