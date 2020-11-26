# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def new
    @task = Task.new
  end
  def show
    @task = Task.find(params[:id])
  end
  def create
    @task = Task.new(task_params)
    @task.save
  end
end
