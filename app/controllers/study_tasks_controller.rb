class StudyTasksController < ApplicationController

    def create
        @study_task = StudyTask.create(study_task_params)
        render json: @study_task
    end 

    private

    def study_task_params
        params.permit(:task_id, :study_session_id)
    end

end
