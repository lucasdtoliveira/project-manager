require 'test_helper'

class BugTest < ActiveSupport::TestCase

  def setup
    @project = projects(:orange)
    # This code is not idiomatically correct.
    #@bug = Bug.new(content: "Lorem ipsum", estado:"Lorem estado", project_id: @project.id)
    @bug = @project.bugs.build(content: "Lorem ipsum", estado:"Lorem estado")
  end

  test "should be valid" do
    assert @bug.valid?
  end

  test "user id should be present" do
    @bug.project_id = nil
    assert_not @bug.valid?
  end 

  test "content should be present" do
  	@bug.content = "   "
  	assert_not @bug.valid?
  end

  test "content should be at most 800 characters" do
    @bug.content = "a" * 801
    assert_not @bug.valid?
  end

  test "estado should be present" do
  	@bug.estado = "   "
  	assert_not @bug.valid?
  end

  test "estado should be at most 100 characters" do
    @bug.estado = "a" * 101
    assert_not @bug.valid?
  end

  test "order should be most recent first" do
    assert_equal bugs(:most_recent), Bug.first
  end

end
