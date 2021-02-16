require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  test "should not save user without a name" do
    user = User.new
    assert_not user.save, "Saved a user without a name"
  end

  test "name should not be longer than 80 characters" do
    user = User.new
    user.player = "a" * 81
    assert_not user.valid?, "user name too long"
  end

end
