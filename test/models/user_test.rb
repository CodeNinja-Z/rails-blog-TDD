require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: "Carlos", email: "cz@blog.com", password: "1111", password_confirmation: "1111")
  end

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "name should be longer than 3 charactors" do
    @user.name = "Ab"
    assert_not @user.valid?
  end

  test "name should be shorter than 40 charactors" do
    @user.name = 'a' * 41
    assert_not @user.valid?
  end

  test "name should be unique" do
    dup_user = @user.dup
    dup_user.name = @user.name.upcase
    # @user.save
    assert_not dup_user.valid?
  end

  test "email address should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "email address should be unique" do
    dup_user = @user.dup
    dup_user.email = @user.email.upcase
    # @user.save  # If you want to compare an object with an existing object, the existing object must be saved for being existing.
    assert_not dup_user.valid?
  end

  test "email validation should accept valid email addresses" do
    valid_addresses = %w(user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eem.au carlos+roxy@love.ca)
    valid_addresses.each do |va|
      @user.email = va
      assert @user.valid?, "#{va.inspect} should be valid" # Display a custom message here
    end
  end

  test "email validation should reject invalid email addresses" do
    invalid_addresses = %w(user@example,com user_at_eee.org user.name@example. eee@i_am_.com foo@ee+aar.com)
    invalid_addresses.each do |ia|
      @user.email = ia
      assert_not @user.valid? "#{ia.inspect} should be invalid email address" # When one fails at any point, I want to know which one is failing.
    end
  end

  test "password must be present" do
    @user.password = ""
    assert_not @user.valid?
  end

  test "password should not be too short" do
    @user.password = "11"
    assert_not @user.valid?
  end

  test "password should not be too long" do
    @user.password = '1' * 17
    assert_not @user.valid?
  end

  test "password confirmation should be the same as password" do
    @user.password = "1111"
    @user.password_confirmation = "111"
    assert_not @user.valid?
  end
end
