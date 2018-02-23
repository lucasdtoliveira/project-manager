require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Project Manager"
  end


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get contact" do
<<<<<<< HEAD
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end
  
=======
    get contact_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

>>>>>>> login-page

end
