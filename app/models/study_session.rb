class StudySession < ApplicationRecord
  belongs_to :user
  has_many :study_tasks, dependent: :destroy
  has_many :tasks, through: :study_tasks
end
