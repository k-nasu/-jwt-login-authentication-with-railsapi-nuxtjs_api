class Api::V1::TasksController < ApplicationController
  before_action :authenticate_active_user

  def index
    tasks = Task.all
    render json: tasks
  end
end
