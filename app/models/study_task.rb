class StudyTask < ApplicationRecord
  belongs_to :study_session
  belongs_to :task
end
