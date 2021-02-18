require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get index_path
    assert_response :success
    assert_select "title", "#{@base_title} | Index"
  end

  test "should get add" do
    get add_path
    assert_response :success
    assert_select "title", "#{@base_title} | Add Player"
  end

end
