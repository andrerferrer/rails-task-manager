class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit]
  # need to find a way to make this work
  # after_action :go_home, only: [:create, :destroy]

  # ######
  # READ #
  # ######

  def index
    @tasks = Task.all
  end

  def show; end

  # ########
  # CREATE #
  # ########

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    go_home
  end

  # ########
  # UPDATE #
  # ########

  def edit; end

  def update
    @task = set_task
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # #########
  # DESTROY #
  # #########

  def destroy
    set_task.destroy
    go_home
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def go_home
    redirect_to tasks_path
  end
end
