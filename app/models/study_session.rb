class StudySession < ApplicationRecord
  belongs_to :user
  has_many :study_tasks
  has_many :tasks, through: :study_tasks
end
