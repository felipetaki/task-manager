# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @restaurants = Restaurant.find(params[:id])
  end
end
