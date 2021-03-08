class StudySessionsController < ApplicationController

    def show 
        @study_session = StudySession.find(params[:id])
        render json: @study_session 
    end 

    def create
        @study_session = StudySession.create()
        render json: @study_session 
    end 

    def update
        @study_session = StudySession.find(params[:id])
        @study_session.update(study_session_params)
        render json: @study_session
    end 

    def destroy
        @study_session = StudySession.find(params[:id])
        @study_session.destroy
        render json: @study_session 
    end 

    private

    def study_session_params
        params.permit(:finished_time)
    end
end
