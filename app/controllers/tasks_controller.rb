class TasksController < ApplicationController
  before_action :logged_in, only:[:edit, :update, :destroy]
  def index
    @tasks =Task.where(user_id: current_user.id)
    @user_achieve = User.find(current_user.id).done_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    @task.user_id = current_user.id
    @task.save
    redirect_to tasks_path
  end
  
  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    user = User.find(current_user.id)
    user.done_task += 1
    user.save
    redirect_to tasks_path
  end
  private
    
    def task_params
      params.require(:task).permit(:title, :memo, :user_id, :duetime, :autenticity_token)
    end
end 
