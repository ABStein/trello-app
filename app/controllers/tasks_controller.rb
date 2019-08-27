class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @home_page = true
  end

  def new

  end
  
  def create
    task = Task.new(
      id: params[:id],
      title: params[:title],
      description: params[:description]
    )

    task.save
    redirect_to '/'
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit 
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])

    @task.assign_attributes(
      id: params[:id],
      title: params[:title],
      description: params[:description]
    )
    @task.save
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to "/"
  end
end
