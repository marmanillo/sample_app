require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name:"Example User", email:"user@example.com")
  end
  # test "the truth" do
  #   assert true
  # end
  test "Should be valid" do
    assert @user.valid?
  end
  test "name Should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end
  test "name Should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  test "email Should be present" do
    @user.email = "    "
    assert_not @user.valid?
  end
  test "email Should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
end
