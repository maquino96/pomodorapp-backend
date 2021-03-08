class TasksController < ApplicationController

    def show 
        @task = Task.find(params[:id])
        render json: @task 
    end 

    def create
        @task = Task.create(task_params)
        render json: @task 
    end 

    # def updated
    #     @task = Task.find(params[:id])
    #     @task.update(task_params)
    #     render json: @task
    # end 

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        render json: @task 
    end 

    private 

    def task_params
        params.permit(:name, :completed)
    end 

end
