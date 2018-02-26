class BugsController < ApplicationController

  def create
    @project = current_user.projects.build(project_params)
  end
    
  def destroy
  end
     
  def project_params
      params.require(:project).permit(:content,:titulo)
  end
end
