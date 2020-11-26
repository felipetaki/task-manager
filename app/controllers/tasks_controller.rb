# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:task])
  end

  def create
    @task = Task.new(params[:restaurant])
    @task.save
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
