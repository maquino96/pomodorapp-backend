class User < ApplicationRecord
    has_many :study_sessions
    has_many :tasks
    validates :name, uniqueness: true
end
