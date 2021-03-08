class User < ApplicationRecord
    has_many :study_sessions
    has_many :tasks
    validates :name, uniqueness: true


    def checklist_tasks
        self.tasks.select{|task| task.completed == false}
    end 

    

end


