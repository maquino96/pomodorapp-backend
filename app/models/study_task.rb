class StudyTask < ApplicationRecord
  belongs_to :study_session
  belongs_to :task 
  after_create :complete_task 

  def complete_task
    self.task.update(completed:true)
  end 

end
