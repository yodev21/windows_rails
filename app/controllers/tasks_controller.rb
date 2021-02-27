class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]
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
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, flash: { notice: "#{@task.title}を登録しました。"}
    else
      render :new
    end
  end

  private 
  def task_params
    params.require(:task).permit(:title, :content)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
