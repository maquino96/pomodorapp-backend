class UsersController < ApplicationController

    def login
        puts params 
        @user = User.find_by(name: params[:name])

        if @user 
            render json: @user
        else 
            render json: ('You must register. User not found.').to_json
        end 
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user 
    end 

    def create

        @user = User.create(user_params)
        if @user.valid?
            render json: @user
        else 
            render json: (@user.errors.full_messages[0]).to_json
        end 
    end 

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end 

    def tasks
        @user = User.find(params[:id])
        render json: @user.checklist_tasks
    end 

    def sessions 
        @user = User.find(params[:id])
        render json: @user.study_sessions
    end 

    private 

    def user_params
        params.permit(:name, :timer_interval, :timer_break)
    end 

end
