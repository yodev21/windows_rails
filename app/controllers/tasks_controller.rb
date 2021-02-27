class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @tasks = Task.all.order(id: :desc)
  end

  def show
  end

  def edit; end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path, flash: { notice: "#{@task.title}を登録しました。"}
    else
      render :new
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, flash: { notice: "#{@task.title}を削除しました！"}
  end

  private 
  def task_params
    params.require(:task).permit(:title, :content, :user_id)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
