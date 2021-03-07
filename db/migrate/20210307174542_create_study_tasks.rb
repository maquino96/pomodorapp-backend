class CreateStudyTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :study_tasks do |t|
      t.belongs_to :study_session, null: false, foreign_key: true
      t.belongs_to :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
