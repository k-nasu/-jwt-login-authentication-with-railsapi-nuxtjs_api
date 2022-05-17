class Api::V1::ProjectsController < ApplicationController
  before_action :authenticate_active_user

  def index


    projects = Project.all
    # date = Date.new(2022,5,1)
    
    # 10.times do |n|
    #     id = n + 1
    #     name = "project #{id.to_s.rjust(2, "0")}"
    #     updated_at = date + (id * 6).hours
    #     projects << { id: id, name: name, updatedAt: updated_at}
    # end
    
    render json: projects
  end
end
