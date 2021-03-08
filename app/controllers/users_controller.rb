class UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
        render json: @user 
    end 

    def create
        @user = User.create(user_params)
        render json: @user 
    end 

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end 

    private 

    def user_params
        params.permit(:name, :timer_interval, :timer_break)
    end 

end
