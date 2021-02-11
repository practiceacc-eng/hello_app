require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Aleph's App"
  end
  
  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "#{@base_title} | Home"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "#{@base_title} | Help"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{@base_title} | About"
  end
  
  test "should get roll" do
    get roll_path
    assert_response :success
    assert_select "title", "#{@base_title} | 8Ball"
  end

end
