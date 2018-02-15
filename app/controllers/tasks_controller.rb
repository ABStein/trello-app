class TasksController < ApplicationController
  def index
    @task = Task.first

    render 'index.html.erb'
  end
end
