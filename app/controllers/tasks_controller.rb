class TasksController < ApplicationController

  before_action :authenticate_user!
  before_action :set_project
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = @project.tasks
  end

  def show
    # Implemented through before_action :set_task
  end

  def new
    @task = @project.tasks.build
  end

  def create
    @task = @project.tasks.build(task_params)

    if @task.save
      redirect_to project_task_path(@project, @task), notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def edit
    # Implemented through before_action :set_task
  end

  def update
    if @task.update(task_params)
      redirect_to project_task_path(@project, @task), notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to project_tasks_path(@project), notice: 'Task was successfully destroyed.'
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    redirect_to projects_path, alert: 'Project not found.'
  end

  def set_task
    @task = @project.tasks.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to project_tasks_path(@project), alert: 'Task not found.'
  end

  def task_params
    params.require(:task).permit(:name, :description, :due_date, :completion, :other_attributes)
  end

end
