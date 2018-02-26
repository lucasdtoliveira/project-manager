class ProjectsController < ApplicationController
  
  before_action :logged_in_user, only: [:create, :destroy]	


  def create
     @project = current_user.projects.build(project_params)
     @bugs = @project.bugs.paginate(page: params[:page])
    if @project.save
      flash[:success] = "Project created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def project_params
    params.require(:project).permit(:content,:titulo)
   # params.require(:project).permit(:titulo)
  end

end

