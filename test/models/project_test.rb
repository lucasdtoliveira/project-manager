require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @project = @user.projects.build(content: "Lorem ipsum", titulo: "First Project")
    #@project = Project.new(content: "Lorem ipsum", titulo: "First Project", user_id: @user.id)
  end

  test "should be valid" do
    assert @project.valid?
  end

  test "user id should be present" do
    @project.user_id = nil
    assert_not @project.valid?
  end


  test "content should be present" do
    @project.content = "   "
    assert_not @project.valid?
  end

  test "titulo should be present" do
    @project.titulo = "   "
    assert_not @project.valid?
  end

  test "titulo should be at most 140 characters" do
    @project.titulo = "a" * 141
    assert_not @project.valid?
  end

  test "order should be most recent first" do
    assert_equal projects(:most_recent), Project.first
  end

end

