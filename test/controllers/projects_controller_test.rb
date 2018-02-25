require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @project = projects(:orange)
  end


  test "should redirect create when not logged in" do
    assert_no_difference 'Project.count' do
      post projects_path, params: { project: { content: "Lorem ipsum", titulo: "Titulo teste" } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Project.count' do
      delete project_path(@project)
    end
    assert_redirected_to login_url
  end

end
