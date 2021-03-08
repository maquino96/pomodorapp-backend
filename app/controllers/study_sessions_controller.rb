class StudySessionsController < ApplicationController

    def show 
        @study_session = StudySession.find(params[:id])
        render json: @study_session 
    end 

    def create
        @study_session = StudySession.create(study_session_params)
        puts params
        render json: @study_session 
        
    end 

    def update
        @study_session = StudySession.find(params[:id])
        @study_session.update(finished_time: DateTime.now)
        render json: @study_session
    end 

    def destroy
        @study_session = StudySession.find(params[:id])
        @study_session.destroy
        render json: @study_session 
    end 

    private

    def study_session_params
        params.require(:study_session).permit(:user_id, :finished_time)
    end
end
