class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @projects = policy_scope(Project)
    authorize @projects
    respond_with(@projects)
  end

  def show
    respond_with(@project)
  end

  def new
    @project = Project.new
    authorize @project

    respond_with(@project)
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    authorize @project

    @project.save
    respond_with(@project)
  end

  def update
    @project.update(project_params)
    respond_with(@project)
  end

  def destroy
    @project.destroy
    respond_with(@project)
  end

protected

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end

  def project_params
    params.require(:project).permit(:name, :starts_at, :ends_at)
  end
end
