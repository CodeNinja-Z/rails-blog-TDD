require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Carlos", email: "cz@blog.com", password: "1111", password_confirmation: "1111")
  end

  test "name must be present" do
    
  end

  test "name must be between 3 charactors and 40 charactors" do
    
  end

  test "email must be present" do
    
  end

  test "email must be unique" do
    
  end

  test "email must be valid" do
    
  end

  test "password must be present" do

  end

  test "password must be between 3 and 16 charactors" do

  end
end
