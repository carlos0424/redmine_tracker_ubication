class TrackerUbicationController < ApplicationController
    before_action :find_project, :authorize
  
    def index
      @locations = TrackerUbication.where(project_id: @project.id).order(created_at: :desc)
    end
  
    private
  
    def find_project
      @project = Project.find(params[:project_id])
    end
  end
  