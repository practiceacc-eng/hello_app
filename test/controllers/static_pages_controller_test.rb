require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "FPL Creator"
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
    assert_select "title", "#{@base_title} | Player Selector"
  end

  test "should have same player list" do
    roll_result = StaticPagesController.new.roll
    players = ["Virgil Van Dijk",
               "Jordan Henderson",
               "Alisson Becker",
               "Joe Gomez",
               "Andrew Robertson",
               "Trent Alexander-Arnold",
               "James Milner",
               "Naby Keita",
               "Curtis Jones",
               "Xherdan Shaqiri",
               "Sadio Mane",
               "Mohammed Salah",
               "Roberto Firmino",
               "Diogo Jota",
               "Nathaniel Phillips",
               "Rhys Williams",
               "Ben Davies",
               "Ozan Kabak"]
    assert_equal true, players.include?(roll_result)
  end

end
